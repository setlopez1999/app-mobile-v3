import 'dart:developer';
import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/domain/datasource/register_user_params.dart';
import 'package:tvapp/domain/entities/user.entity.dart';
import 'package:tvapp/domain/repositories/app_settings.repository.dart';

class AuthRepository {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  final Dio dio = Dio();

  Future<UserEntity> getUser(String email) async {
    final response = await dio.get(
      '${Environment.baseHost}/api/get-user?email=$email',
    );

    return UserEntity.fromJson(response.data!);
  }

  /// Login user
  Future<Either<String, List<String>>> login({
    required String email,
    required String password,
  }) async {
    try {
      Response res;
      String id = '';
      if (Platform.isAndroid) {
        final device = await deviceInfoPlugin.androidInfo;
        final androidID = await const AndroidId().getId();
        id = androidID!.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
        res = await dio.post<Map<String, dynamic>>(
          '${Environment.baseHost}/api/inicio',
          data: {
            'usuario': email,
            'pass': password,
            'devid': id,
            'marca': device.brand,
            'manufacturer': device.manufacturer,
            'modelo': device.model,
            'platform': 1,
          },
          options: Options(
            headers: {
              'Content-Type': 'application/json; charset=UTF-8',
              'user-agent': 'APPMOVIL-$id',
              'Accept': '',
            },
          )
        );
      }
      else {
        final device = await deviceInfoPlugin.iosInfo;
        id = device.identifierForVendor!
            .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')
            .replaceAll('-', '');
        res = await dio.post<Map<String, dynamic>>(
            '${Environment.baseHost}/api/inicio',
            data: {
              'usuario': email,
              'pass': password,
              'devid': id,
              'marca': 'Apple',
              'manufacturer': 'Apple Inc.',
              'modelo': device.model,
              'platform': 2,
            },
            options: Options(
              headers: {
                'Content-Type': 'application/json; charset=UTF-8',
                'user-agent': 'APPMOVILIOS-$id',
                'Accept': '',
              },
            )
        );
      }
      assert(() { debugPrint('[Auth] device id: $id'); return true; }());
      final data = res.data;
      if (data!['code'] == 200) {
        await reRegisterFCM(email);
        return Right([data['info']['token'], id, data['info']['parentlockcode']]);
      }
      if (data['code'] == 400) {
        return Left(data['mensaje']);
      }
      return const Left('Algo salió mal');
    } catch (error, stackTrace) {
      log('error', error: error, stackTrace: stackTrace);
      return Left(error.toString());
    }
  }

  Future<void> reRegisterFCM(String email) async {
    final token = await FirebaseMessaging.instance.getToken();
    final userDocument = await FirebaseFirestore.instance
        .collection('credentials')
        .doc(email)
        .get();
    if (userDocument.exists) {
      await FirebaseFirestore.instance
          .collection('credentials')
          .doc(email)
          .update({
        'fcm': token,
      });
    } else {
      await FirebaseFirestore.instance
          .collection('credentials')
          .doc(email)
          .set({
        'fcm': token,
      });
    }
    await FirebaseMessaging.instance.subscribeToTopic('all');
  }

  /// Register user
  Future<Either<String, String>> register({
    required RegisterUserParams params,
    required String departmentCode,
    required String provinceCode,
    required String districtCode,
    required bool acceptTerms,
    required bool acceptPolicies,

  }) async {
    final settings = await AppSettingsRepository().getRegisterSettings();
    try {
      final res = await dio.post<Map<String, dynamic>>(
        '${Environment.middlewareHost}/api/client/register',
        data: {
          'document_type_id': 1,
          'document_number': params.dni.toString(),
          'name': params.firstName.toString(),
          'first_lastname': params.lastName.split(' ').first,
          'second_lastname': params.lastName.split(' ').last,
          'phone': params.phoneNumber.toString(),
          'email': params.email.toString(),
          'plan_id': settings!.planFreeSelected,  //1
          'ubigeo_code': '$departmentCode$provinceCode$districtCode',
          'accept_terms': acceptTerms,
          'accept_policies': acceptPolicies,
        },
      );
      final data = res.data;

      if (data!['result'] == true) {
        return Right(data['message']);
      }
      if (data['result'] == false) {
        return Left(data['mensaje']);
      }

      return const Left('Algo salió mal');
    } catch (e, stackTrace) {
      if (e is DioException) {
        if (e.response != null) {
          // print('Error ${e.response?.statusCode}: ${e.response?.data}');
          final errorResponse = e.response?.data;
          if (errorResponse['result'] == false) {
            return Left(errorResponse['message']);
          }
        }
      }

      return const Left('Hubo un error al registrar usuario');
    }
  }

  Future<Either<String, dynamic>> desvincule(String token) async {
    try {
      final res =
          await dio.post('${Environment.baseHost}/api/desvincular', data: {
        'token': token,
      });

      final json = res.data;
      if (json!['error']) {
        return Left(json['message']);
      }
    } catch (error) {
      log('Errorto desvincule', error: error.toString());
      return left(error.toString());
    }
    return const Right(null);
  }
}
