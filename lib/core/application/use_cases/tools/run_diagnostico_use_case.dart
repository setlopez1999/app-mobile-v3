import 'package:tvapp/core/services/tools/network_analyzer_service.dart';
import 'package:tvapp/core/services/local_device_service.dart';
import 'package:tvapp/core/domain/entities/tools/diagnostico.dart';
import 'package:tvapp/core/infraestructure/repositories/tools/diagnostico_repository.dart';
import 'package:tvapp/core/infraestructure/repositories/tools/fibra_repository.dart';

/// Pasos del diagnóstico — usados como señal de progreso hacia la capa de presentación.
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

  /// Ejecuta el diagnóstico completo y notifica el progreso vía [onProgress].
  /// Si [onProgress] no se provee la ejecución sigue siendo válida (útil en tests).
  Future<RunDiagnosticoResult> execute(
    RunDiagnosticoInput input, {
    void Function(DiagnosticoProgress step)? onProgress,
    void Function(DiagnosticoProgress step, dynamic value)? onStepResult,
  }) async {
    onProgress?.call(DiagnosticoProgress.pingGoogle);
    final pingGoogle = await _networkService.ping(input.googleTarget);
    onStepResult?.call(DiagnosticoProgress.pingGoogle, pingGoogle.avgMs.round());

    onProgress?.call(DiagnosticoProgress.pingIsp);
    final pingIsp = await _networkService.ping(input.ispTarget);
    onStepResult?.call(DiagnosticoProgress.pingIsp, pingIsp.avgMs.round());

    onProgress?.call(DiagnosticoProgress.speedtest);
    final speed = await _networkService.runSpeedTest(serverBaseUrl: input.serverBaseUrl);
    onStepResult?.call(DiagnosticoProgress.speedtest, speed);

    onProgress?.call(DiagnosticoProgress.wifiInfo);
    final wifiInfo = await _localDeviceService.getWifiInfo();
    onStepResult?.call(DiagnosticoProgress.wifiInfo, wifiInfo);

    onProgress?.call(DiagnosticoProgress.fibra);
    final fibra = await _fibraRepo.getFibra();
    onStepResult?.call(DiagnosticoProgress.fibra, fibra);

    onProgress?.call(DiagnosticoProgress.guardando);
    final result = await _diagnosticoRepo.saveDiagnostico(
      DiagnosticoRequest(
        clienteId: input.clienteId,
        latenciaGoogleMs: pingGoogle.avgMs.round(),
        latenciaIspMs: pingIsp.avgMs.round(),
        velocidadBajadaMbps: speed.downloadMbps,
        velocidadSubidaMbps: speed.uploadMbps,
        fibraPotenciaDbm: fibra.potenciaDbm,
        fibraEstado: fibra.estado,
      ),
    );

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
      resultado: result.resultado,
    );
  }
}
