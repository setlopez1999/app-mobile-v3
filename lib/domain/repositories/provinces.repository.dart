import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/domain/entities/location.entity.dart';

/// Provinces Repository
class ProvincesRepository {
  Future<List<LocationEntity>> getList(String departmentCode) async {
    final List<LocationEntity> result = <LocationEntity>[];
    try {
      final Dio dio = Dio();
      final response = await dio.get(
        '${Environment.middlewareHost}/api/address/province?department_code=$departmentCode',
      );
      if (response.statusCode == 200) {
        final data = response.data['data'];
        for (final json in data) {
          result.add(LocationEntity.fromJson(json));
        }
      }
    } on SocketException catch (error) {
      log('province.repository.dart on getList()', error: error);
    }
    return result;
  }
}
