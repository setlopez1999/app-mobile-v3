import 'package:dio/dio.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/error_handler/domain_exception.dart';
import 'package:tvapp/domain/entities/category.entity.dart';
import 'package:tvapp/domain/entities/index_info.entity.dart';

/// Index Repository
class IndexRepository {
  final dio = Dio();

  /// Get Home Info
  Future<IndexInfo> getHomeInfo(String token) async {
    try {
      final res = await dio.get('${Environment.baseHost}/$token/inicio.json');

      final json = res.data;

      if (json is Map && json.containsKey('code') && json['code'] == 400) {
        throw DomainException();
      }

      return _parseIndexInfo(json);
    } catch (e) {
      throw Exception(e);
    }
  }

  IndexInfo _parseIndexInfo(Map<String, dynamic> json) {
    final categories = List<CategoryEntity>.from(
      json['googlevideos'].map(
        (category) {
          return CategoryEntity.fromJson(category);
        },
      ),
    );

    return IndexInfo(
      categories: categories,
      plan: json['info']['plan'],
      planId: json['info']['planid'],
    );
  }
}
