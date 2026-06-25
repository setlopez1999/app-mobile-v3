import 'package:dio/dio.dart';
import 'package:tvapp/core/domain/entities/tools/dispositivo.dart';
import 'dispositivo_repository.dart';

class DispositivoRepositoryImpl implements DispositivoRepository {
  final Dio _client;

  DispositivoRepositoryImpl(this._client);

  @override
  Future<List<Dispositivo>> getDispositivos() async {
    return [];
  }
}
