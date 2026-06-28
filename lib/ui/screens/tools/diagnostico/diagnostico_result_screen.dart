import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/core/theme/app_colors.dart';
import 'package:tvapp/ui/providers/tools/diagnostico_notifier.dart';

class DiagnosticoResultScreen extends ConsumerWidget {
  static const String name = 'DiagnosticoResult';

  const DiagnosticoResultScreen({super.key});

  Color _colorCalidad(ItemCalidad c) {
    switch (c) {
      case ItemCalidad.bueno:   return const Color(0xFF00D285);
      case ItemCalidad.regular: return Colors.orange;
      case ItemCalidad.malo:    return const Color(0xFFF44336);
      default:                  return Colors.grey;
    }
  }

  IconData _iconCalidad(ItemCalidad c) {
    switch (c) {
      case ItemCalidad.bueno:   return Icons.check_circle;
      case ItemCalidad.regular: return Icons.warning_amber_rounded;
      case ItemCalidad.malo:    return Icons.cancel;
      default:                  return Icons.help_outline;
    }
  }

  Color _colorResultado(String? resultado) {
    if (resultado == null) return Colors.grey;
    if (resultado.contains('EXCELENTE')) return const Color(0xFF00D285);
    if (resultado.contains('BUENO')) return Colors.orange;
    return const Color(0xFFF44336);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(diagnosticoNotifierProvider);
    final resultColor = _colorResultado(state.resultadoFinal);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.go('/tools/check-health'),
        ),
        title: const Text(
          'Resultado',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: resultColor.withOpacity(0.15),
                border: Border.all(color: resultColor, width: 3),
              ),
              child: Icon(
                state.resultadoFinal?.contains('EXCELENTE') == true
                    ? Icons.check_circle_outline
                    : state.resultadoFinal?.contains('BUENO') == true
                        ? Icons.warning_amber_rounded
                        : Icons.cancel_outlined,
                color: resultColor,
                size: 60,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              state.resultadoFinal ?? 'Completado',
              style: TextStyle(
                color: resultColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Diagnóstico de red completado',
              style: TextStyle(color: AppColors.textBody, fontSize: 14),
            ),
            const SizedBox(height: 40),
            _ResultItem(
              title: 'Velocidad de internet',
              subtitle: state.velocidadBajadaMbps != null
                  ? '↓ ${state.velocidadBajadaMbps!.toStringAsFixed(1)} Mbps  ↑ ${state.velocidadSubidaMbps?.toStringAsFixed(1) ?? '--'} Mbps'
                  : 'Sin datos',
              calidad: state.calidadVelocidad,
              icon: Icons.speed,
              colorFn: _colorCalidad,
              iconFn: _iconCalidad,
            ),
            const SizedBox(height: 12),
            _ResultItem(
              title: 'Red WiFi Doméstica',
              subtitle: state.latenciaIspMs != null ? '${state.latenciaIspMs} ms' : 'Sin datos',
              calidad: state.calidadIsp,
              icon: Icons.router,
              colorFn: _colorCalidad,
              iconFn: _iconCalidad,
            ),
            const SizedBox(height: 12),
            _ResultItem(
              title: 'Conexión WiFi',
              subtitle: state.wifiSsid != null
                  ? '${state.wifiSsid}  ${state.wifiBanda ?? ''}'
                  : 'Sin datos',
              calidad: state.calidadWifi,
              icon: Icons.wifi,
              colorFn: _colorCalidad,
              iconFn: _iconCalidad,
            ),
            const SizedBox(height: 12),
            _ResultItem(
              title: 'Fibra óptica',
              subtitle: state.fibraEstado != null
                  ? '${state.fibraEstado}  ${state.fibraPotenciaDbm ?? ''}'
                  : 'Sin datos',
              calidad: state.calidadFibra,
              icon: Icons.cable,
              colorFn: _colorCalidad,
              iconFn: _iconCalidad,
            ),
            const SizedBox(height: 12),
            _ResultItem(
              title: 'Latencia y estabilidad',
              subtitle: state.latenciaGoogleMs != null
                  ? '${state.latenciaGoogleMs} ms (Google)'
                  : 'Sin datos',
              calidad: state.calidadGoogle,
              icon: Icons.network_ping,
              colorFn: _colorCalidad,
              iconFn: _iconCalidad,
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () => context.go('/tools/check-health'),
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: AppColors.success,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'Volver a Check Health',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _ResultItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final ItemCalidad calidad;
  final IconData icon;
  final Color Function(ItemCalidad) colorFn;
  final IconData Function(ItemCalidad) iconFn;

  const _ResultItem({
    required this.title,
    required this.subtitle,
    required this.calidad,
    required this.icon,
    required this.colorFn,
    required this.iconFn,
  });

  @override
  Widget build(BuildContext context) {
    final color = colorFn(calidad);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF32324A),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                Text(subtitle,
                    style: TextStyle(color: color, fontSize: 12)),
              ],
            ),
          ),
          Icon(iconFn(calidad), color: color, size: 22),
        ],
      ),
    );
  }
}
