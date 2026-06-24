import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/presentation/screens/login/login.screen.dart';
import 'package:tvapp/presentation/widgets/google_text_span.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Register Screen
class RegisterConfirmationScreen extends ConsumerStatefulWidget {
  const RegisterConfirmationScreen({super.key});

  static String name = 'register-confirmation';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterConfirmationScreen>{
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (booleaano) {
        booleaano = false;
        context.pushReplacementNamed(LoginScreen.name);
      },
      child: Scaffold(body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 48,),
                Icon(
                  Icons.check_circle,
                  color: AppTheme.secondaryColor(context),
                  size: 50,
                ),
                const SizedBox(height: 12,),
                const GoogleTextWidget(
                  'Confirmación de registro',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24,),
                const GoogleTextWidget(
                  '¡Registro completado\ncon éxito!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12)
                      .copyWith(bottom: 16),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: googleTextSpan(
                      context,
                      value: 'Ya cuentas con ',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      children: [
                        googleTextSpan(
                          context,
                          value: '60 días GRATIS del Plan Full',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        googleTextSpan(
                          context,
                          value: ' con más de ',
                        ),
                        googleTextSpan(
                          context,
                          value: '140 canales',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        googleTextSpan(
                          context,
                          value: ' nacionales e internacionales.\n',
                        ),
                        googleTextSpan(
                          context,
                          value: 'Recuerda que, después de este período disfrutarás\n del ',
                        ),
                        googleTextSpan(
                          context,
                          value: 'Plan Basic libre.',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        googleTextSpan(
                          context,
                          value: ' Costo de ',
                        ),
                        googleTextSpan(
                          context,
                          value: 'Plan Full s/ 9.90',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                Container(
                  decoration: BoxDecoration(
                    color: AppTheme.secondaryColor(context),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/send_mail.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(width: 16,),
                      RichText(
                    textAlign: TextAlign.justify,
                    text: googleTextSpan(
                      context,
                      value: 'Revisa tu correo electrónico e inicia\nsesión con el usuario y contraseña\nque te hemos enviado.',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                          color: Colors.black,
                      ),))
                    ],
                  ),
                ),
                const SizedBox(height: 56,),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(64),
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async {
                    if (context.mounted) {
                      context.pushReplacementNamed(LoginScreen.name);
                    }
                  },
                  child: const Text('Ir a Iniciar sesión'),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
