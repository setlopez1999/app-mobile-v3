import 'package:tvapp/domain/entities/tools/diagnostico.dart';

abstract class DiagnosticoRepository {
  Future<List<Diagnostico>> getHistorial();
  Future<DiagnosticoSaveResult> saveDiagnostico(DiagnosticoRequest req);
}
