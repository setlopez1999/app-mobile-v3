import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';
import 'package:url_launcher/url_launcher.dart';

class FamilyFilterScreen extends ConsumerStatefulWidget {
  const FamilyFilterScreen({super.key});

  static String name = 'Family Filter';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FamilyFilterScreenState();
}

class _FamilyFilterScreenState extends ConsumerState<FamilyFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Filtro familiar',
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 60),
                    child: GoogleTextWidget(
                      'Nuestro "Filtro Familiar" es un\nguardián bloqueando contenido no\napto para niños y otorgando a los\npadres control total.',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const GoogleTextWidget(
                    'Si deseas cambiar tu código de Filtro Familiar, dirígete al Portal Cliente.',
                  ),
                  const SizedBox(height: 30),
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
