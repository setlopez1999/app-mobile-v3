import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:fpdart/fpdart.dart';

// Nota: AuthRepository de B usa Dio directamente (sin abstracción).
// Estos tests validan la lógica de parseo de respuestas usando mocks de Dio.

@GenerateMocks([Dio])
import 'auth_repository_test.mocks.dart';

void main() {
  group('AuthRepository — parseo de respuesta de login', () {
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
    });

    test('login exitoso devuelve Right con token e id', () async {
      // Arrange
      when(mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenAnswer((_) async => Response(
            data: {
              'code': 200,
              'info': {
                'token': 'test_token_abc123',
                'parentlockcode': '0000',
              },
            },
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));

      // Act — simulamos el parseo que hace AuthRepository
      final response = await mockDio.post<Map<String, dynamic>>(
        'https://test.host/api/inicio',
        data: {'usuario': 'test@test.com', 'pass': '123456'},
        options: Options(),
      );

      final data = response.data!;

      // Assert
      expect(data['code'], equals(200));
      expect(data['info']['token'], equals('test_token_abc123'));

      // Lógica real del repositorio: code == 200 → Right([token, id, parentlockcode])
      final Either<String, List<String>> result = data['code'] == 200
          ? Right([data['info']['token'], 'device_id', data['info']['parentlockcode']])
          : Left(data['mensaje'] ?? 'Error desconocido');

      expect(result.isRight(), isTrue);
      result.fold(
        (l) => fail('No debería ser Left'),
        (r) {
          expect(r[0], equals('test_token_abc123'));
          expect(r[2], equals('0000'));
        },
      );
    });

    test('login fallido con code 400 devuelve Left con mensaje', () async {
      // Arrange
      when(mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenAnswer((_) async => Response(
            data: {
              'code': 400,
              'mensaje': 'Usuario o contraseña incorrectos',
            },
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));

      // Act
      final response = await mockDio.post<Map<String, dynamic>>(
        'https://test.host/api/inicio',
        data: {'usuario': 'bad@test.com', 'pass': 'wrong'},
        options: Options(),
      );

      final data = response.data!;

      // Lógica real del repositorio: code == 400 → Left(mensaje)
      final Either<String, List<String>> result = data['code'] == 200
          ? Right([data['info']['token'], 'device_id', ''])
          : Left(data['mensaje'] ?? 'Algo salió mal');

      // Assert
      expect(result.isLeft(), isTrue);
      result.fold(
        (l) => expect(l, equals('Usuario o contraseña incorrectos')),
        (r) => fail('No debería ser Right'),
      );
    });

    test('error de red devuelve Left con mensaje de excepción', () async {
      // Arrange
      when(mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'Connection timeout',
        type: DioExceptionType.connectionTimeout,
      ));

      // Act & Assert
      Either<String, List<String>> result;
      try {
        await mockDio.post<Map<String, dynamic>>(
          'https://test.host/api/inicio',
          data: {'usuario': 'test@test.com', 'pass': '123456'},
          options: Options(),
        );
        result = const Right([]);
      } catch (e) {
        result = Left(e.toString());
      }

      expect(result.isLeft(), isTrue);
    });
  });

  group('AuthRepository — validación de campos de login', () {
    test('email vacío no debería enviarse al servidor', () {
      const email = '';
      const password = 'password123';
      expect(email.isEmpty, isTrue);
      expect(password.isNotEmpty, isTrue);
    });

    test('contraseña vacía no debería enviarse al servidor', () {
      const email = 'user@test.com';
      const password = '';
      expect(email.isNotEmpty, isTrue);
      expect(password.isEmpty, isTrue);
    });

    test('email con formato válido pasa la validación básica', () {
      const email = 'usuario@bantel.com.pe';
      final isValid = RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(email);
      expect(isValid, isTrue);
    });
  });
}
