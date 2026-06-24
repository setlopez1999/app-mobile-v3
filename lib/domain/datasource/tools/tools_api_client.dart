import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/storage/secure_storage.dart';

class ToolsApiClient {
  late final Dio _dio;

  ToolsApiClient({required SecureStorage storage}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: Environment.toolsBaseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {'Content-Type': 'application/json'},
        validateStatus: (_) => true,
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final token = storage.get('token');
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (error, handler) {
          debugPrint('[ToolsApiClient] Error ${error.response?.statusCode}: ${error.message}');
          return handler.next(error);
        },
      ),
    );

    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: false,
        responseBody: false,
        logPrint: (obj) => debugPrint('[ToolsApiClient] $obj'),
      ));
    }
  }

  Future<dynamic> get(String path, {Map<String, dynamic>? queryParams}) async {
    final response = await _dio.get(path, queryParameters: queryParams);
    return response.data;
  }

  Future<dynamic> post(String path, {dynamic body}) async {
    final response = await _dio.post(path, data: body);
    return response.data;
  }

  Future<dynamic> put(String path, {dynamic body}) async {
    final response = await _dio.put(path, data: body);
    return response.data;
  }

  Future<dynamic> delete(String path) async {
    final response = await _dio.delete(path);
    return response.data;
  }
}
