import 'package:dio/dio.dart';
import 'package:tvapp/core/domain/entities/tools/fibra.dart';
import 'fibra_repository.dart';

class FibraRepositoryImpl implements FibraRepository {
  final Dio _client;

  FibraRepositoryImpl(this._client);

  @override
  Future<Fibra> getFibra() async {
    return const Fibra(estado: 'OK', potenciaDbm: '-15 dBm');
  }
}
