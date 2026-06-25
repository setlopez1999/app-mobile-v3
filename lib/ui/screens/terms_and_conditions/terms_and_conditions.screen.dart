
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/core/domain/entities/settings/settings_entity.dart';
import 'package:tvapp/core/infraestructure/repositories/settings_http_repository.dart';
import 'package:tvapp/core/shared/exceptions/app_exception.dart';
import 'package:tvapp/ui/shared/widgets/app_bar.widget.dart';

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
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Términos y condiciones',
      ),
      body: FutureBuilder(
          future: SettingsHttpRepository().getSettings(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error'),
              );
            }
            final settingsResult = snapshot.data as Either<AppException, Settings>;
            return settingsResult.fold(
              (error) => Center(
                child: Text(error.message),
              ),
              (settings) {
                return Center(
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Html(
                        data: settings.terms,
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
            );
          }
      ),
    );
  }
}
