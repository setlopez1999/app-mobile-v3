import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/core/application/use_cases/tools/run_diagnostico_use_case.dart';
import 'package:tvapp/core/services/tools/network_analyzer_service.dart';
import '../../../core/services/local_device_service.dart';
import 'package:tvapp/storage/tools/local_storage.dart';
import 'diagnostico_providers.dart';
import 'fibra_providers.dart';

enum DiagnosticoStep {
  idle,
  pingGoogle,
  pingIsp,
  speedtest,
  wifiInfo,
  fibra,
  guardando,
  completado,
  error,
}

class DiagnosticoState {
  final DiagnosticoStep step;
  final int? latenciaGoogleMs;
  final int? latenciaIspMs;
  final double? velocidadBajadaMbps;
  final double? velocidadSubidaMbps;
  final String? fibraPotenciaDbm;
  final String? fibraEstado;
  final String? wifiSsid;
  final int? wifiSenialDbm;
  final String? wifiBanda;
  final String? wifiGateway;
  final String? resultadoFinal;
  final String? errorMsg;

  const DiagnosticoState({
    this.step = DiagnosticoStep.idle,
    this.latenciaGoogleMs,
    this.latenciaIspMs,
    this.velocidadBajadaMbps,
    this.velocidadSubidaMbps,
    this.fibraPotenciaDbm,
    this.fibraEstado,
    this.wifiSsid,
    this.wifiSenialDbm,
    this.wifiBanda,
    this.wifiGateway,
    this.resultadoFinal,
    this.errorMsg,
  });

  DiagnosticoState copyWith({
    DiagnosticoStep? step,
    int? latenciaGoogleMs,
    int? latenciaIspMs,
    double? velocidadBajadaMbps,
    double? velocidadSubidaMbps,
    String? fibraPotenciaDbm,
    String? fibraEstado,
    String? wifiSsid,
    int? wifiSenialDbm,
    String? wifiBanda,
    String? wifiGateway,
    String? resultadoFinal,
    String? errorMsg,
  }) =>
      DiagnosticoState(
        step: step ?? this.step,
        latenciaGoogleMs: latenciaGoogleMs ?? this.latenciaGoogleMs,
        latenciaIspMs: latenciaIspMs ?? this.latenciaIspMs,
        velocidadBajadaMbps: velocidadBajadaMbps ?? this.velocidadBajadaMbps,
        velocidadSubidaMbps: velocidadSubidaMbps ?? this.velocidadSubidaMbps,
        fibraPotenciaDbm: fibraPotenciaDbm ?? this.fibraPotenciaDbm,
        fibraEstado: fibraEstado ?? this.fibraEstado,
        wifiSsid: wifiSsid ?? this.wifiSsid,
        wifiSenialDbm: wifiSenialDbm ?? this.wifiSenialDbm,
        wifiBanda: wifiBanda ?? this.wifiBanda,
        wifiGateway: wifiGateway ?? this.wifiGateway,
        resultadoFinal: resultadoFinal ?? this.resultadoFinal,
        errorMsg: errorMsg ?? this.errorMsg,
      );
}

class DiagnosticoNotifier extends Notifier<DiagnosticoState> {
  @override
  DiagnosticoState build() => const DiagnosticoState();

  Future<void> iniciarDiagnostico() async {
    try {
      final useCase = RunDiagnosticoUseCase(
        networkService: ref.read(networkAnalyzerServiceProvider),
        localDeviceService: ref.read(localDeviceServiceProvider),
        diagnosticoRepo: ref.read(diagnosticoRepositoryProvider),
        fibraRepo: ref.read(fibraRepositoryProvider),
      );

      final result = await useCase.execute(
        RunDiagnosticoInput(
          googleTarget: LocalStorage.getGooglePingTarget() ?? '8.8.8.8',
          ispTarget: LocalStorage.getIspPingTarget() ?? '1.1.1.1',
          clienteId: LocalStorage.getClienteId() ?? '',
          serverBaseUrl: Environment.toolsBaseUrl,
        ),
        onProgress: (progress) {
          state = state.copyWith(
            step: _mapProgress(progress),
          );
        },
      );

      state = state.copyWith(
        step: DiagnosticoStep.completado,
        latenciaGoogleMs: result.latenciaGoogleMs,
        latenciaIspMs: result.latenciaIspMs,
        velocidadBajadaMbps: result.velocidadBajadaMbps,
        velocidadSubidaMbps: result.velocidadSubidaMbps,
        wifiSsid: result.wifiSsid,
        wifiSenialDbm: result.wifiSenialDbm,
        wifiBanda: result.wifiBanda,
        wifiGateway: result.wifiGateway,
        fibraPotenciaDbm: result.fibraPotenciaDbm,
        fibraEstado: result.fibraEstado,
        resultadoFinal: result.resultado,
      );

      ref.invalidate(historialDiagnosticoProvider);
    } catch (e) {
      state = state.copyWith(step: DiagnosticoStep.error, errorMsg: e.toString());
    }
  }

  DiagnosticoStep _mapProgress(DiagnosticoProgress progress) {
    switch (progress) {
      case DiagnosticoProgress.pingGoogle: return DiagnosticoStep.pingGoogle;
      case DiagnosticoProgress.pingIsp:   return DiagnosticoStep.pingIsp;
      case DiagnosticoProgress.speedtest: return DiagnosticoStep.speedtest;
      case DiagnosticoProgress.wifiInfo:  return DiagnosticoStep.wifiInfo;
      case DiagnosticoProgress.fibra:     return DiagnosticoStep.fibra;
      case DiagnosticoProgress.guardando: return DiagnosticoStep.guardando;
    }
  }

  void reset() => state = const DiagnosticoState();
}

final diagnosticoNotifierProvider =
    NotifierProvider<DiagnosticoNotifier, DiagnosticoState>(
  DiagnosticoNotifier.new,
);
