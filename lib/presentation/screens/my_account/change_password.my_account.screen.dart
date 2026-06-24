import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  static String name = 'Change password';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Cambiar contraseña',
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GoogleTextWidget(
                    'Si deseas cambiar tu contraseña, dirígete al Portal Cliente.',
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(49),
                    ),
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://bantelweb.iptvperu.tv/login'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    child: const Text('Ir al Portal Cliente'),
                  ),
                ],
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GoogleTextWidget(
                      'Si tienes dudas, contáctanos al:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GoogleTextWidget('Whatsapp: +51 999 999 999'),
                    GoogleTextWidget('Call Center: 01 456 7891'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
