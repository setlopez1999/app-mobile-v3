import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/providers/current_user.state.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Profile in my account screen
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  static String name = 'Profile';

  @override
  ConsumerState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(currentUserProvider);
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Perfil',
      ),
      body: userData.when(
        data: (data) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Column(
              children: ListTile.divideTiles(
                color: Colors.white24,
                tiles: [
                  ListTile(
                    title: const GoogleTextWidget(
                      'Usuario',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: GoogleTextWidget(
                      '${data.nombres} ${data.paterno} ${data.materno}',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const GoogleTextWidget(
                      'Correo electrónico',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: GoogleTextWidget(
                      data.email,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ).toList(),
            ),
          ),
        ),
        error: (error, stack) => const GoogleTextWidget(''),
        loading: () => Center(
          child: CircularProgressIndicator(
            color: AppTheme.textColor(context),
          ),
        ),
      ),
    );
  }
}
