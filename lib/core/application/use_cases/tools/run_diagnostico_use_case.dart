import 'package:tvapp/core/domain/entities/tools/fibra.dart';
import 'package:tvapp/core/domain/entities/tools/wifi_info.dart';
import 'package:tvapp/core/services/tools/network_analyzer_service.dart';
import 'package:tvapp/core/services/local_device_service.dart';
import 'package:tvapp/core/domain/entities/tools/diagnostico.dart';
import 'package:tvapp/core/infraestructure/repositories/tools/diagnostico_repository.dart';
import 'package:tvapp/core/infraestructure/repositories/tools/fibra_repository.dart';

enum DiagnosticoProgress {
  pingGoogle,
  pingIsp,
  speedtest,
  wifiInfo,
  fibra,
  guardando,
}

class RunDiagnosticoInput {
  final String googleTarget;
  final String ispTarget;
  final String clienteId;
  final String serverBaseUrl;

  const RunDiagnosticoInput({
    required this.googleTarget,
    required this.ispTarget,
    required this.clienteId,
    required this.serverBaseUrl,
  });
}

class RunDiagnosticoResult {
  final int latenciaGoogleMs;
  final int latenciaIspMs;
  final double velocidadBajadaMbps;
  final double velocidadSubidaMbps;
  final String? wifiSsid;
  final int? wifiSenialDbm;
  final String? wifiBanda;
  final String? wifiGateway;
  final String? fibraPotenciaDbm;
  final String? fibraEstado;
  final String resultado;

  const RunDiagnosticoResult({
    required this.latenciaGoogleMs,
    required this.latenciaIspMs,
    required this.velocidadBajadaMbps,
    required this.velocidadSubidaMbps,
    this.wifiSsid,
    this.wifiSenialDbm,
    this.wifiBanda,
    this.wifiGateway,
    this.fibraPotenciaDbm,
    this.fibraEstado,
    required this.resultado,
  });
}

class RunDiagnosticoUseCase {
  final NetworkAnalyzerService _networkService;
  final LocalDeviceService _localDeviceService;
  final DiagnosticoRepository _diagnosticoRepo;
  final FibraRepository _fibraRepo;

  RunDiagnosticoUseCase({
    required NetworkAnalyzerService networkService,
    required LocalDeviceService localDeviceService,
    required DiagnosticoRepository diagnosticoRepo,
    required FibraRepository fibraRepo,
  })  : _networkService = networkService,
        _localDeviceService = localDeviceService,
        _diagnosticoRepo = diagnosticoRepo,
        _fibraRepo = fibraRepo;

  /// Cada paso es independiente — nunca lanza. Si un paso falla, los demás continúan.
  Future<RunDiagnosticoResult> execute(
    RunDiagnosticoInput input, {
    void Function(DiagnosticoProgress step)? onProgress,
    void Function(DiagnosticoProgress step, dynamic value)? onStepResult,
  }) async {
    onProgress?.call(DiagnosticoProgress.pingGoogle);
    final pingGoogle = await _safePing(input.googleTarget);
    onStepResult?.call(DiagnosticoProgress.pingGoogle, pingGoogle.avgMs.round());

    onProgress?.call(DiagnosticoProgress.pingIsp);
    final pingIsp = await _safePing(input.ispTarget);
    onStepResult?.call(DiagnosticoProgress.pingIsp, pingIsp.avgMs.round());

    onProgress?.call(DiagnosticoProgress.speedtest);
    final speed = await _safeSpeedTest(input.serverBaseUrl);
    onStepResult?.call(DiagnosticoProgress.speedtest, speed);

    onProgress?.call(DiagnosticoProgress.wifiInfo);
    final wifiInfo = await _safeWifiInfo();
    onStepResult?.call(DiagnosticoProgress.wifiInfo, wifiInfo);

    onProgress?.call(DiagnosticoProgress.fibra);
    final fibra = await _safeFibra();
    onStepResult?.call(DiagnosticoProgress.fibra, fibra);

    onProgress?.call(DiagnosticoProgress.guardando);
    final resultado = await _safeSave(DiagnosticoRequest(
      clienteId: input.clienteId,
      latenciaGoogleMs: pingGoogle.avgMs.round(),
      latenciaIspMs: pingIsp.avgMs.round(),
      velocidadBajadaMbps: speed.downloadMbps,
      velocidadSubidaMbps: speed.uploadMbps,
      fibraPotenciaDbm: fibra.potenciaDbm,
      fibraEstado: fibra.estado,
    ));

    return RunDiagnosticoResult(
      latenciaGoogleMs: pingGoogle.avgMs.round(),
      latenciaIspMs: pingIsp.avgMs.round(),
      velocidadBajadaMbps: speed.downloadMbps,
      velocidadSubidaMbps: speed.uploadMbps,
      wifiSsid: wifiInfo.ssid,
      wifiSenialDbm: wifiInfo.signalStrengthDbm,
      wifiBanda: wifiInfo.band,
      wifiGateway: wifiInfo.gatewayAddress,
      fibraPotenciaDbm: fibra.potenciaDbm,
      fibraEstado: fibra.estado,
      resultado: resultado,
    );
  }

  // ── Wrappers seguros ─────────────────────────────────────────────────────────

  Future<PingResult> _safePing(String host) async {
    try {
      return await _networkService.ping(host);
    } catch (_) {
      return PingResult.failure();
    }
  }

  Future<SpeedTestResult> _safeSpeedTest(String serverBaseUrl) async {
    try {
      return await _networkService.runSpeedTest(serverBaseUrl: serverBaseUrl);
    } catch (_) {
      return const SpeedTestResult(downloadMbps: 0, uploadMbps: 0);
    }
  }

  Future<WifiInfo> _safeWifiInfo() async {
    try {
      return await _localDeviceService.getWifiInfo();
    } catch (_) {
      return WifiInfo.empty();
    }
  }

  Future<Fibra> _safeFibra() async {
    try {
      return await _fibraRepo.getFibra();
    } catch (_) {
      return const Fibra(potenciaDbm: '--', estado: 'ERROR');
    }
  }

  Future<String> _safeSave(DiagnosticoRequest req) async {
    try {
      final result = await _diagnosticoRepo.saveDiagnostico(req);
      return result.resultado;
    } catch (_) {
      return _resultadoLocal(req);
    }
  }

  /// Calcula un resultado local cuando el backend no está disponible.
  String _resultadoLocal(DiagnosticoRequest req) {
    int score = 0;
    if (req.latenciaGoogleMs > 0 && req.latenciaGoogleMs < 150) score++;
    if (req.latenciaIspMs > 0 && req.latenciaIspMs < 150) score++;
    if (req.velocidadBajadaMbps > 10) score++;
    if (score == 3) return 'EXCELENTE';
    if (score >= 2) return 'BUENO';
    return 'DEFICIENTE';
  }
}
