import 'package:dio/dio.dart';
import 'package:tvapp/core/domain/entities/tools/diagnostico.dart';
import 'diagnostico_repository.dart';

class DiagnosticoRepositoryImpl implements DiagnosticoRepository {
  final Dio _client;

  DiagnosticoRepositoryImpl(this._client);

  @override
  Future<List<Diagnostico>> getHistorial() async {
    return [];
  }

  @override
  Future<DiagnosticoSaveResult> saveDiagnostico(DiagnosticoRequest request) async {
    return const DiagnosticoSaveResult(success: true, diagnosticoId: '', resultado: 'EXCELENTE');
  }
}
