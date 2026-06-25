import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/ui/screens/home/home.screen.dart';
import 'package:tvapp/ui/screens/tools/check_health/check_health_screen.dart';
import 'package:tvapp/ui/screens/tools/gaming/gaming_screen.dart';
import 'package:tvapp/ui/screens/tools/streaming/streaming_screen.dart';
import 'package:tvapp/ui/screens/tools/dispositivos/devices_screen.dart';
import 'package:tvapp/ui/screens/tools/asistencia/asistencia_loading_screen.dart';

/// Pantalla principal post-login.
/// Muestra un grid de acceso a los módulos principales de la app.
class MenuGridScreen extends StatelessWidget {
  const MenuGridScreen({super.key});
  static const String name = 'Menu Grid';
  static const String path = '/menu';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final items = _menuItems(context);

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) => _MenuCard(item: items[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
      child: Row(
        children: [
          SizedBox(
            height: 36,
            child: Image.asset(
              Environment.appIcon,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const SizedBox(),
            ),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Menú principal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<_MenuItem> _menuItems(BuildContext context) => [
    _MenuItem(
      title: 'IPTV',
      subtitle: 'Canales y contenido',
      icon: Icons.tv_rounded,
      gradient: const LinearGradient(
        colors: [Color(0xFF1565C0), Color(0xFF0D47A1)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      onTap: () => context.goNamed(HomeScreen.name),
    ),
    _MenuItem(
      title: 'Check Health',
      subtitle: 'Diagnóstico de red',
      icon: Icons.wifi_tethering_rounded,
      gradient: const LinearGradient(
        colors: [Color(0xFF00CC66), Color(0xFF00BEB6)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      onTap: () => context.pushNamed(CheckHealthScreen.name),
    ),
    _MenuItem(
      title: 'Gaming',
      subtitle: 'Servidores de juego',
      icon: Icons.sports_esports_rounded,
      gradient: const LinearGradient(
        colors: [Color(0xFF6A1B9A), Color(0xFF4A148C)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      onTap: () => context.pushNamed(GamingScreen.name),
    ),
    _MenuItem(
      title: 'Streaming',
      subtitle: 'Plataformas OTT',
      icon: Icons.play_circle_fill_rounded,
      gradient: const LinearGradient(
        colors: [Color(0xFFE53935), Color(0xFFB71C1C)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      onTap: () => context.pushNamed(StreamingScreen.name),
    ),
    _MenuItem(
      title: 'Dispositivos',
      subtitle: 'Red doméstica',
      icon: Icons.devices_rounded,
      gradient: const LinearGradient(
        colors: [Color(0xFFF57C00), Color(0xFFE65100)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      onTap: () => context.pushNamed(DevicesScreen.name),
    ),
    _MenuItem(
      title: 'Asistencia',
      subtitle: 'Soporte técnico',
      icon: Icons.support_agent_rounded,
      gradient: const LinearGradient(
        colors: [Color(0xFF00838F), Color(0xFF006064)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      onTap: () => context.pushNamed(AsistenciaLoadingScreen.name),
    ),
  ];
}

class _MenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Gradient gradient;
  final VoidCallback onTap;

  const _MenuItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.gradient,
    required this.onTap,
  });
}

class _MenuCard extends StatelessWidget {
  final _MenuItem item;
  const _MenuCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: item.gradient,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.35),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(item.icon, color: Colors.white, size: 34),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.subtitle,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.75),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
