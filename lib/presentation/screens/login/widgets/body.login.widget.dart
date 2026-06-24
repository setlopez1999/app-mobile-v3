import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/config/extensions/context.extension.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/presentation/screens/home/home.screen.dart';
import 'package:tvapp/presentation/screens/my_account/change_password.my_account.screen.dart';
import 'package:tvapp/presentation/screens/register/register-confirmation.screen.dart';
import 'package:tvapp/presentation/screens/register/register.screen.dart';
import 'package:tvapp/presentation/widgets/google_text_span.widget.dart';
import 'package:tvapp/providers/auth_state.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Body Widget
class BodyWidget extends ConsumerStatefulWidget {
  const BodyWidget({super.key});

  @override
  ConsumerState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<BodyWidget> {
  bool _obscureText = true;
  bool _loadingLogin = false;

  final formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/brand/logo.png',
                        width: 64,
                        height: 64,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 48),
                            child: GoogleTextWidget(
                              'Iniciar sesión',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextFormField(
                          cursorColor: AppTheme.textColor(context),
                          style: googleStyle(context),
                          controller: userController,
                          decoration: const InputDecoration(
                            hintText: 'Usuario',
                          ),
                          validator: (value) {
                            if (value.isNotNull && value!.isEmpty) {
                              return 'Este campo es requerido.';
                            }
                            return null;
                          },
                        ),
                      ),
                      TextFormField(
                        cursorColor: AppTheme.textColor(context),
                        style: googleStyle(context),
                        controller: passController,
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_rounded
                                  : Icons.visibility_off_rounded,
                            ),
                            color: AppTheme.textColor(context),
                          ),
                        ),
                        validator: (value) {
                          if (value.isNull || value!.isEmpty) {
                            return 'La contraseña no puede estar vacía';
                            // } else if (value.length < 8) {
                            //   return 'La contraseña debe tener al menos 8 caracteres';
                            //   } else if (!RegExp('[A-Z]').hasMatch(value)) {
                            //     return 'La contraseña debe tener al menos una letra mayúscula';
                            // } else if (!RegExp('[a-z]').hasMatch(value)) {
                            //   return 'La contraseña debe tener al menos una letra minúscula';
                            // } else if (!RegExp('[0-9]').hasMatch(value)) {
                            //   return 'La contraseña debe tener al menos un número';
                            //   } else if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
                            //     return r'La contraseña debe tener al menos un carácter especial (!@#$&*~)';
                          }
                          return null;
                        },
                        obscureText: _obscureText,
                      ),
                      TextButton(
                        onPressed: () {
                          context.pushNamed(ChangePasswordScreen.name);
                        },
                        child: const GoogleTextWidget(
                          '¿Olvidaste tu contraseña?',
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const GoogleTextWidget('¿Aún no tienes cuenta?'),
                          TextButton(
                            onPressed: () {
                              context.pushNamed(RegisterScreen.name);
                            },
                            child: const GoogleTextWidget(
                              'Regístrate',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          minimumSize: const Size.fromHeight(64),
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: _loadingLogin
                            ? () {}
                            : () async {
                                setState(() {
                                  _loadingLogin = true;
                                });
                                if (formKey.currentState!.validate()) {
                                  final error = await ref
                                      .read(currentAuthStateProvider.notifier)
                                      .login(
                                        email: userController.text,
                                        pass: passController.text,
                                      );

                                  if (error.isNotNull && context.mounted) {
                                    var errorTitle = 'Error';
                                    var errorContent = error!;
                                    if (errorContent.contains('The connection errored')) {
                                      errorTitle = 'No hay conexión a internet';
                                      errorContent = 'Verifique su red de internet y vuelva a intentarlo.';
                                    }
                                    await context.dialog(
                                      icon: Icon(
                                        Icons.dangerous,
                                        color: AppTheme.secondaryColor(context),
                                        size: 48,
                                      ),
                                      title: errorTitle,
                                      content: errorContent
                                    );
                                  } else if (context.mounted) {
                                    context
                                        .pushReplacementNamed(HomeScreen.name);
                                  }
                                }
                                setState(() {
                                  _loadingLogin = false;
                                });
                                return;
                              },
                        child: _loadingLogin
                            ? CircularProgressIndicator(
                                color: AppTheme.secondaryTextColor(context),
                              )
                            : const Text('Entrar'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
