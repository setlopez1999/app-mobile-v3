import 'package:flutter_test/flutter_test.dart';
import 'package:tvapp/core/application/use_cases/tools/run_diagnostico_use_case.dart';
import 'package:tvapp/core/domain/entities/tools/diagnostico.dart';
import 'package:tvapp/core/domain/entities/tools/fibra.dart';
import 'package:tvapp/core/domain/entities/tools/wifi_info.dart';
import 'package:tvapp/core/infraestructure/repositories/tools/diagnostico_repository.dart';
import 'package:tvapp/core/infraestructure/repositories/tools/fibra_repository.dart';
import 'package:tvapp/core/services/local_device_service.dart';
import 'package:tvapp/core/services/tools/network_analyzer_service.dart';

// ── Stubs ─────────────────────────────────────────────────────────────────────

class _FakeNetworkService implements NetworkAnalyzerService {
  final double avgPingMs;
  final double downloadMbps;
  final double uploadMbps;

  _FakeNetworkService({
    this.avgPingMs = 20.0,
    this.downloadMbps = 80.0,
    this.uploadMbps = 40.0,
  });

  @override
  Future<PingResult> analyze(String host, {int count = 4}) async =>
      PingResult(avgPing: avgPingMs, lossPercent: 0, jitter: 1, success: true);

  @override
  Future<PingResult> ping(String host, {int count = 4}) async =>
      PingResult(avgPing: avgPingMs, lossPercent: 0, jitter: 1, success: true);

  @override
  Future<SpeedTestResult> runSpeedTest({String? serverBaseUrl}) async =>
      SpeedTestResult(downloadMbps: downloadMbps, uploadMbps: uploadMbps);
}

class _FakeLocalDeviceService implements LocalDeviceService {
  final WifiInfo wifi;

  _FakeLocalDeviceService({WifiInfo? wifi})
      : wifi = wifi ??
            const WifiInfo(
              ssid: 'TestNet',
              signalStrengthDbm: -55,
              frequencyMhz: 5180,
              ipAddress: '192.168.1.10',
              gatewayAddress: '192.168.1.1',
            );

  @override
  Future<WifiInfo> getWifiInfo() async => wifi;

  @override
  dynamic noSuchMethod(Invocation i) => super.noSuchMethod(i);
}

class _FakeDiagnosticoRepo implements DiagnosticoRepository {
  final String resultado;

  _FakeDiagnosticoRepo({this.resultado = 'EXCELENTE'});

  @override
  Future<DiagnosticoSaveResult> saveDiagnostico(DiagnosticoRequest req) async =>
      DiagnosticoSaveResult(
        success: true,
        diagnosticoId: 'diag_test_001',
        resultado: resultado,
      );

  @override
  Future<List<Diagnostico>> getHistorial() async => [];
}

class _FakeFibraRepo implements FibraRepository {
  @override
  Future<Fibra> getFibra() async =>
      const Fibra(potenciaDbm: '-18.0', estado: 'OK');
}

// ── Input de prueba ───────────────────────────────────────────────────────────

const _testInput = RunDiagnosticoInput(
  googleTarget: '8.8.8.8',
  ispTarget: '1.1.1.1',
  clienteId: 'cliente_test',
  serverBaseUrl: 'https://test.example.com',
);

// ── Tests ─────────────────────────────────────────────────────────────────────

void main() {
  group('RunDiagnosticoUseCase', () {
    late RunDiagnosticoUseCase useCase;

    setUp(() {
      useCase = RunDiagnosticoUseCase(
        networkService: _FakeNetworkService(),
        localDeviceService: _FakeLocalDeviceService(),
        diagnosticoRepo: _FakeDiagnosticoRepo(),
        fibraRepo: _FakeFibraRepo(),
      );
    });

    test('devuelve resultado con latencias correctas', () async {
      final result = await useCase.execute(_testInput);

      expect(result.latenciaGoogleMs, equals(20));
      expect(result.latenciaIspMs, equals(20));
    });

    test('devuelve velocidades del speed test', () async {
      useCase = RunDiagnosticoUseCase(
        networkService: _FakeNetworkService(downloadMbps: 95.0, uploadMbps: 45.0),
        localDeviceService: _FakeLocalDeviceService(),
        diagnosticoRepo: _FakeDiagnosticoRepo(),
        fibraRepo: _FakeFibraRepo(),
      );

      final result = await useCase.execute(_testInput);

      expect(result.velocidadBajadaMbps, equals(95.0));
      expect(result.velocidadSubidaMbps, equals(45.0));
    });

    test('resultado refleja el valor devuelto por el repositorio', () async {
      useCase = RunDiagnosticoUseCase(
        networkService: _FakeNetworkService(),
        localDeviceService: _FakeLocalDeviceService(),
        diagnosticoRepo: _FakeDiagnosticoRepo(resultado: 'REGULAR'),
        fibraRepo: _FakeFibraRepo(),
      );

      final result = await useCase.execute(_testInput);

      expect(result.resultado, equals('REGULAR'));
    });

    test('datos de WiFi se transfieren al resultado', () async {
      final result = await useCase.execute(_testInput);

      expect(result.wifiSsid, equals('TestNet'));
      expect(result.wifiSenialDbm, equals(-55));
      expect(result.wifiBanda, equals('5 GHz'));
      expect(result.wifiGateway, equals('192.168.1.1'));
    });

    test('datos de fibra se transfieren al resultado', () async {
      final result = await useCase.execute(_testInput);

      expect(result.fibraEstado, equals('OK'));
      expect(result.fibraPotenciaDbm, equals('-18.0'));
    });

    test('onProgress se invoca en el orden correcto', () async {
      final steps = <DiagnosticoProgress>[];

      await useCase.execute(
        _testInput,
        onProgress: steps.add,
      );

      expect(steps, equals([
        DiagnosticoProgress.pingGoogle,
        DiagnosticoProgress.pingIsp,
        DiagnosticoProgress.speedtest,
        DiagnosticoProgress.wifiInfo,
        DiagnosticoProgress.fibra,
        DiagnosticoProgress.guardando,
      ]));
    });

    test('execute sin onProgress no lanza error', () async {
      expect(() => useCase.execute(_testInput), returnsNormally);
    });

    test('propagates exception cuando el repositorio falla', () async {
      final failingRepo = _ThrowingDiagnosticoRepo();
      useCase = RunDiagnosticoUseCase(
        networkService: _FakeNetworkService(),
        localDeviceService: _FakeLocalDeviceService(),
        diagnosticoRepo: failingRepo,
        fibraRepo: _FakeFibraRepo(),
      );

      expect(
        () => useCase.execute(_testInput),
        throwsA(isA<Exception>()),
      );
    });
  });
}

class _ThrowingDiagnosticoRepo implements DiagnosticoRepository {
  @override
  Future<DiagnosticoSaveResult> saveDiagnostico(DiagnosticoRequest req) async =>
      throw Exception('Error de red simulado');

  @override
  Future<List<Diagnostico>> getHistorial() async => [];
}
