import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/domain/entities/location.entity.dart';

/// District Repository
class DistrictsRepository {
  Future<List<LocationEntity>> getList(
    String departmentCode,
    String provinceCode,
  ) async {
    final List<LocationEntity> result = <LocationEntity>[];
    try {
      final Dio dio = Dio();
      final response = await dio.get(
        '${Environment.middlewareHost}/api/address/district?department_code=$departmentCode&province_code=$provinceCode',
      );
      if (response.statusCode == 200) {
        final data = response.data['data'];
        for (final json in data) {
          result.add(LocationEntity.fromJson(json));
        }
      }
    } on SocketException catch (error) {
      log('districts.repository.dart on getList()', error: error);
    }
    return result;
  }
}
