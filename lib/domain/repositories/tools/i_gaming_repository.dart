import 'package:tvapp/domain/entities/tools/servidor_juego.dart';

abstract class IGamingRepository {
  Future<List<ServidorJuego>> getServidores();
}
