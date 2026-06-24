import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/domain/entities/app_settings.entity.dart';

class AppSettingsRepository {
  Future<AppSettingsEntity?> getRegisterSettings() async {
    AppSettingsEntity? result;
    try {
      final dio = Dio();
      final response = await dio.get(
        '${Environment.middlewareHost}/api/config?key=register',
      );

      if (response.statusCode == 200) {
        final data = (response.data['data'] as List)[0];
        final details = data['details'];
        final terms = List.from(details.where((item) {
          return item['key'] == 'terms_and_conditions';
        }))[0]['value'];
        final policies = List.from(details.where((item) {
          return item['key'] == 'policies';
        }))[0]['value'];
        final planFreeSelected = List.from(details.where((item) {
          return item['key'] == 'plan_free_selected';
        }))[0]['value'];

        result = AppSettingsEntity(
          terms: terms,
          policies: policies,
          planFreeSelected: planFreeSelected
        );
      }
    } catch (error) {
      log('app_settings.repository.dart on getRegisterSettings()',
          error: error);
    }
    return result;
  }
}
