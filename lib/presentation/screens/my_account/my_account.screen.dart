import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/presentation/screens/login/login.screen.dart';
import 'package:tvapp/presentation/screens/my_account/change_password.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/family_filter.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/plan.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/profile.my_account.screen.dart';
import 'package:tvapp/providers/auth_state.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

import '../../../providers/current_user.state.dart';

/// My Account Screen
class MyAccountScreen extends ConsumerStatefulWidget {
  const MyAccountScreen({super.key});

  @override
  ConsumerState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends ConsumerState<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {

    final userData = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Mi cuenta',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Center(
          child: Column(
            children: ListTile.divideTiles(
              color: Colors.white24,
              tiles: [
                /// Profile
                ListTile(
                  onTap: () {
                    context.pushNamed(ProfileScreen.name);
                  },
                  leading: Icon(
                    Icons.person_add_outlined,
                    color: AppTheme.secondaryColor(context),
                    size: 32,
                  ),
                  title: const GoogleTextWidget(
                    'Perfil',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                /// Plan
                ListTile(
                  onTap: () {
                    context.pushNamed(PlanScreen.name);
                  },
                  leading: Icon(
                    Icons.list_alt_outlined,
                    color: AppTheme.secondaryColor(context),
                    size: 32,
                  ),
                  title: const GoogleTextWidget(
                    'Mi Plan',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                /// Change password
                ListTile(
                  onTap: () {
                    context.pushNamed(ChangePasswordScreen.name);
                  },
                  leading: Icon(
                    Icons.lock_outline_rounded,
                    color: AppTheme.secondaryColor(context),
                    size: 32,
                  ),
                  title: const GoogleTextWidget(
                    'Cambiar contraseña',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                /// Family Filter
                ListTile(
                  onTap: () {
                    context.pushNamed(FamilyFilterScreen.name);
                  },
                  leading: Icon(
                    Icons.family_restroom_outlined,
                    color: AppTheme.secondaryColor(context),
                    size: 32,
                  ),
                  title: const GoogleTextWidget(
                    'Filtro familiar',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                /// Sign out
                ListTile(
                  onTap: () async {
                    final result = await showModalBottomSheet<bool>(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          color: AppTheme.textColor(context),
                          padding: const EdgeInsets.all(48),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GoogleTextWidget(
                                '¿Deseas cerrar sesión?',
                                style: TextStyle(
                                  color: AppTheme.primaryColor(context),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 48),
                              Row(
                                children: [
                                  FilledButton(
                                    style: FilledButton.styleFrom(
                                      minimumSize: const Size(86, 49),
                                    ),
                                    onPressed: () => context.pop(true),
                                    child: const Text('Sí'),
                                  ),
                                  const SizedBox(width: 16),
                                  FilledButton(
                                    style: FilledButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                        color: AppTheme.primaryColor(context)
                                            .withOpacity(0.5),
                                        width: 2,
                                      ),
                                      minimumSize: const Size(86, 49),
                                    ),
                                    onPressed: () => context.pop(false),
                                    child: const Text('No'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );

                    if (result == true) {
                      await ref
                          .read(currentAuthStateProvider.notifier)
                          .logout();
                      if (context.mounted) {
                        context.pushReplacementNamed(LoginScreen.name);
                      }
                    }
                  },
                  leading: Icon(
                    Icons.exit_to_app_outlined,
                    color: AppTheme.secondaryColor(context),
                    size: 32,
                  ),
                  title: const GoogleTextWidget(
                    'Cerrar sesión',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                userData.when(
                    data: (user) {
                      if (Environment.userStore != user.email) {
                        return const SizedBox.shrink();
                      }

                      return ListTile(
                        onTap: () async {
                          final result = await showModalBottomSheet<bool>(
                            context: context,
                            builder: (context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                color: AppTheme.textColor(context),
                                padding: const EdgeInsets.all(48),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GoogleTextWidget(
                                      '¿Deseas eliminar tu cuenta?',
                                      style: TextStyle(
                                        color: AppTheme.primaryColor(context),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 48),
                                    Row(
                                      children: [
                                        FilledButton(
                                          style: FilledButton.styleFrom(
                                            minimumSize: const Size(86, 49),
                                          ),
                                          onPressed: () => context.pop(true),
                                          child: const Text('Sí'),
                                        ),
                                        const SizedBox(width: 16),
                                        FilledButton(
                                          style: FilledButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            side: BorderSide(
                                              color: AppTheme.primaryColor(context)
                                                  .withOpacity(0.5),
                                              width: 2,
                                            ),
                                            minimumSize: const Size(86, 49),
                                          ),
                                          onPressed: () => context.pop(false),
                                          child: const Text('No'),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );

                          if (result == true) {
                            await ref
                                .read(currentAuthStateProvider.notifier)
                                .logout();
                            if (context.mounted) {
                              context.pushReplacementNamed(LoginScreen.name);
                            }
                          }
                        },
                        leading: Icon(
                          Icons.exit_to_app_outlined,
                          color: AppTheme.secondaryColor(context),
                          size: 32,
                        ),
                        title: const GoogleTextWidget(
                          'Eliminar cuenta',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    },
                    error: (error, stack) => const SizedBox.shrink(),
                    loading: () => const SizedBox.shrink()
                )
              ],
            ).toList(),
          ),
        ),
      ),
    );
  }
}
