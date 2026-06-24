import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/providers/app_settings.state.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Terms and conditions
class TermsAndConditions extends ConsumerStatefulWidget {
  const TermsAndConditions({super.key});

  static String name = 'Terms & Conditions';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TermsAndConditionsState();
}

class _TermsAndConditionsState extends ConsumerState<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    final asyncTerms = ref.watch(appSettingsProvider);
    return Scaffold(
      appBar: customAppBar(
        context,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(39),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                GoogleTextWidget(
                  'Términos y condiciones',
                  style: TextStyle(
                    color: AppTheme.secondaryColor(context),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: asyncTerms.when(
        data: (settings) {
          if (settings.isNotNull) {
            return Center(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Html(
                    data: settings!.terms,
                    style: {
                      'body': Style(
                        color: AppTheme.textColor(context),
                      )
                    },
                  ),
                ),
              ),
            );
          }
          return Container();
        },
        error: (error, stack) {
          log('On load terms and conditions', error: error, stackTrace: stack);
          return GoogleTextWidget('$error => $stack');
        },
        loading: () => Center(
          child: CircularProgressIndicator(
            color: AppTheme.textColor(context),
          ),
        ),
      ),
    );
  }
}
