import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/providers/auth_state.dart';

/// MenuGridScreen — Hub principal post-login.
/// Presenta las secciones de la app en un grid de tarjetas.
class MenuGridScreen extends ConsumerWidget {
  const MenuGridScreen({super.key});

  static const String path = '/menu';
  static const String name = 'Menu';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final primaryColor = AppTheme.primaryColor(context);
    final secondaryColor = AppTheme.secondaryColor(context);
    final textColor = AppTheme.textColor(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(
              primaryColor: primaryColor,
              secondaryColor: secondaryColor,
              textColor: textColor,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _MenuGrid(
                  secondaryColor: secondaryColor,
                  textColor: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Header ──────────────────────────────────────────────────────────────────

class _Header extends ConsumerWidget {
  const _Header({
    required this.primaryColor,
    required this.secondaryColor,
    required this.textColor,
  });

  final Color primaryColor;
  final Color secondaryColor;
  final Color textColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: secondaryColor.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Logo
          Image.asset(
            Environment.appIcon,
            height: 36,
            errorBuilder: (_, __, ___) => SvgPicture.asset(
              'assets/tools/hub/logo_oneplay.svg',
              height: 36,
              colorFilter: ColorFilter.mode(secondaryColor, BlendMode.srcIn),
            ),
          ),
          const Spacer(),
          // App name
          Text(
            Environment.appName,
            style: GoogleFonts.getFont(
              Environment.googleFonts,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
          const Spacer(),
          // Logout button
          IconButton(
            onPressed: () =>
                ref.read(currentAuthStateProvider.notifier).logout(),
            icon: Icon(Icons.logout_rounded, color: textColor.withOpacity(0.7)),
            tooltip: 'Cerrar sesión',
          ),
        ],
      ),
    );
  }
}

// ─── Grid ─────────────────────────────────────────────────────────────────────

class _MenuGrid extends StatelessWidget {
  const _MenuGrid({
    required this.secondaryColor,
    required this.textColor,
  });

  final Color secondaryColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final items = _menuItems(context);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.1,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => _MenuCard(
        item: items[index],
        accentColor: secondaryColor,
        textColor: textColor,
      ),
    );
  }

  List<_MenuItem> _menuItems(BuildContext context) => [
        _MenuItem(
          label: 'IPTV',
          subtitle: 'Televisión en vivo',
          iconAsset: 'assets/icons/channels.svg',
          iconFallback: Icons.live_tv_rounded,
          onTap: () => context.go('/home'),
        ),
        _MenuItem(
          label: 'Check Health',
          subtitle: 'Diagnóstico de red',
          iconAsset: 'assets/tools/wifi.svg',
          iconFallback: Icons.wifi_rounded,
          onTap: () => context.go('/tools/check-health'),
        ),
        _MenuItem(
          label: 'Gaming',
          subtitle: 'Monitor de servidores',
          iconAsset: 'assets/tools/gaming_pad.svg',
          iconFallback: Icons.sports_esports_rounded,
          onTap: () => context.go('/tools/gaming'),
        ),
        _MenuItem(
          label: 'Streaming',
          subtitle: 'Estado de plataformas',
          iconAsset: 'assets/tools/streaming.svg',
          iconFallback: Icons.play_circle_rounded,
          onTap: () => context.go('/tools/streaming'),
        ),
        _MenuItem(
          label: 'Dispositivos',
          subtitle: 'Red local',
          iconAsset: 'assets/tools/devices-svgrepo-com.svg',
          iconFallback: Icons.devices_rounded,
          onTap: () => context.go('/tools/dispositivos'),
        ),
        _MenuItem(
          label: 'Asistencia',
          subtitle: 'Soporte técnico',
          iconAsset: 'assets/tools/help-circle-svgrepo-.svg',
          iconFallback: Icons.support_agent_rounded,
          onTap: () => context.go('/tools/asistencia'),
        ),
      ];
}

// ─── Card ─────────────────────────────────────────────────────────────────────

class _MenuCard extends StatelessWidget {
  const _MenuCard({
    required this.item,
    required this.accentColor,
    required this.textColor,
  });

  final _MenuItem item;
  final Color accentColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.06),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: accentColor.withOpacity(0.25),
            width: 1.2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    item.iconAsset,
                    colorFilter:
                        ColorFilter.mode(accentColor, BlendMode.srcIn),
                    placeholderBuilder: (_) => Icon(
                      item.iconFallback,
                      color: accentColor,
                      size: 22,
                    ),
                  ),
                ),
              ),
              // Labels
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.label,
                    style: GoogleFonts.getFont(
                      Environment.googleFonts,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.subtitle,
                    style: GoogleFonts.getFont(
                      Environment.googleFonts,
                      fontSize: 11,
                      color: textColor.withOpacity(0.55),
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

// ─── Model ────────────────────────────────────────────────────────────────────

class _MenuItem {
  const _MenuItem({
    required this.label,
    required this.subtitle,
    required this.iconAsset,
    required this.iconFallback,
    required this.onTap,
  });

  final String label;
  final String subtitle;
  final String iconAsset;
  final IconData iconFallback;
  final VoidCallback onTap;
}
