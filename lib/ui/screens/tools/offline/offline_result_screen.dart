import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/core/theme/app_colors.dart';
import 'package:tvapp/core/domain/entities/tools/wifi_info.dart';

class OfflineResultScreen extends StatelessWidget {
  static const String name = 'Offline Result';

  final Map<String, dynamic> data;

  const OfflineResultScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final wifi = data['wifi'] as WifiInfo?;
    final device = data['device'] as Map<String, dynamic>? ?? {};
    final devices = data['devices'] as List<dynamic>? ?? [];
    final online = data['online'] as bool? ?? false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.canPop() ? context.pop() : context.go('/'),
        ),
        title: const Text(
          'Resultado Offline',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: online
                    ? AppColors.success.withValues(alpha: 0.15)
                    : Colors.red.withValues(alpha: 0.15),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: online ? AppColors.success : Colors.redAccent,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    online ? Icons.check_circle : Icons.cancel,
                    color: online ? AppColors.success : Colors.redAccent,
                    size: 48,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    online ? 'Red Local Activa' : 'Sin Conexión Local',
                    style: TextStyle(
                      color: online ? AppColors.success : Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    online
                        ? 'Dispositivos detectados en red'
                        : 'No se detectaron dispositivos',
                    style: const TextStyle(color: AppColors.textBody, fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _ResultItem(label: 'SSID', value: wifi?.ssid ?? '--'),
            _ResultItem(
              label: 'Señal',
              value: wifi?.signalStrengthDbm != null
                  ? '${wifi!.signalStrengthDbm} dBm'
                  : '--',
            ),
            _ResultItem(label: 'Banda', value: wifi?.band ?? '--'),
            _ResultItem(label: 'IP Local', value: wifi?.ipAddress ?? '--'),
            _ResultItem(label: 'Gateway', value: wifi?.gatewayAddress ?? '--'),
            _ResultItem(
              label: 'Dispositivo',
              value: '${device['model'] ?? '--'} · ${device['osVersion'] ?? '--'}',
            ),
            _ResultItem(
              label: 'Equipos en red',
              value: devices.length.toString(),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _ResultItem extends StatelessWidget {
  final String label;
  final String value;
  const _ResultItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          color: AppColors.container,
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: const TextStyle(color: AppColors.textBody, fontSize: 13)),
            Text(value,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
