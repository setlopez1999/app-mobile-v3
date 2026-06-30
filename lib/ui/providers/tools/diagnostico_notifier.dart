import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/core/application/use_cases/tools/run_diagnostico_use_case.dart';
import 'package:tvapp/core/domain/entities/tools/fibra.dart';
import 'package:tvapp/core/domain/entities/tools/wifi_info.dart';
import 'package:tvapp/core/services/tools/network_analyzer_service.dart';
import 'package:tvapp/core/services/local_device_service.dart';
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

enum ItemCalidad { pendiente, cargando, bueno, regular, malo, fallido }

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
  final ItemCalidad calidadGoogle;
  final ItemCalidad calidadIsp;
  final ItemCalidad calidadVelocidad;
  final ItemCalidad calidadWifi;
  final ItemCalidad calidadFibra;

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
    this.calidadGoogle = ItemCalidad.pendiente,
    this.calidadIsp = ItemCalidad.pendiente,
    this.calidadVelocidad = ItemCalidad.pendiente,
    this.calidadWifi = ItemCalidad.pendiente,
    this.calidadFibra = ItemCalidad.pendiente,
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
    ItemCalidad? calidadGoogle,
    ItemCalidad? calidadIsp,
    ItemCalidad? calidadVelocidad,
    ItemCalidad? calidadWifi,
    ItemCalidad? calidadFibra,
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
        calidadGoogle: calidadGoogle ?? this.calidadGoogle,
        calidadIsp: calidadIsp ?? this.calidadIsp,
        calidadVelocidad: calidadVelocidad ?? this.calidadVelocidad,
        calidadWifi: calidadWifi ?? this.calidadWifi,
        calidadFibra: calidadFibra ?? this.calidadFibra,
      );
}

ItemCalidad _calidadLatencia(int ms, {bool isGoogle = true}) {
  if (ms <= 0) return ItemCalidad.fallido;
  if (isGoogle) {
    if (ms < 50) return ItemCalidad.bueno;
    if (ms < 150) return ItemCalidad.regular;
    return ItemCalidad.malo;
  } else {
    if (ms < 20) return ItemCalidad.bueno;
    if (ms < 80) return ItemCalidad.regular;
    return ItemCalidad.malo;
  }
}

ItemCalidad _calidadVelocidad(double mbps) {
  if (mbps <= 0) return ItemCalidad.fallido;
  if (mbps > 20) return ItemCalidad.bueno;
  if (mbps > 5) return ItemCalidad.regular;
  return ItemCalidad.malo;
}

ItemCalidad _calidadFibra(String estado) {
  if (estado == 'OK') return ItemCalidad.bueno;
  return ItemCalidad.malo;
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
            calidadGoogle: progress == DiagnosticoProgress.pingGoogle
                ? ItemCalidad.cargando
                : state.calidadGoogle,
            calidadIsp: progress == DiagnosticoProgress.pingIsp
                ? ItemCalidad.cargando
                : state.calidadIsp,
            calidadVelocidad: progress == DiagnosticoProgress.speedtest
                ? ItemCalidad.cargando
                : state.calidadVelocidad,
            calidadWifi: progress == DiagnosticoProgress.wifiInfo
                ? ItemCalidad.cargando
                : state.calidadWifi,
            calidadFibra: progress == DiagnosticoProgress.fibra
                ? ItemCalidad.cargando
                : state.calidadFibra,
          );
        },
        onStepResult: (step, value) {
          switch (step) {
            case DiagnosticoProgress.pingGoogle:
              final ms = value as int;
              state = state.copyWith(
                latenciaGoogleMs: ms,
                calidadGoogle: _calidadLatencia(ms, isGoogle: true),
              );
            case DiagnosticoProgress.pingIsp:
              final ms = value as int;
              state = state.copyWith(
                latenciaIspMs: ms,
                calidadIsp: _calidadLatencia(ms, isGoogle: false),
              );
            case DiagnosticoProgress.speedtest:
              final speed = value as SpeedTestResult;
              state = state.copyWith(
                velocidadBajadaMbps: speed.downloadMbps,
                velocidadSubidaMbps: speed.uploadMbps,
                calidadVelocidad: _calidadVelocidad(speed.downloadMbps),
              );
            case DiagnosticoProgress.wifiInfo:
              final wifi = value as WifiInfo;
              state = state.copyWith(
                wifiSsid: wifi.ssid,
                wifiSenialDbm: wifi.signalStrengthDbm,
                wifiBanda: wifi.band,
                wifiGateway: wifi.gatewayAddress,
                calidadWifi: wifi.ssid != null ? ItemCalidad.bueno : ItemCalidad.fallido,
              );
            case DiagnosticoProgress.fibra:
              final fibra = value as Fibra;
              state = state.copyWith(
                fibraPotenciaDbm: fibra.potenciaDbm,
                fibraEstado: fibra.estado,
                calidadFibra: _calidadFibra(fibra.estado),
              );
            case DiagnosticoProgress.guardando:
              break;
          }
        },
      );

      state = state.copyWith(
        step: DiagnosticoStep.completado,
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
