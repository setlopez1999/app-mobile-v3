import 'dart:async';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:tvapp/core/domain/entities/tools/servidor_juego.dart';
import 'i_gaming_repository.dart';

class GamingApiRepositoryImpl implements IGamingRepository {
  final Dio _client;
  Timer? _timer;
  final _controller = StreamController<List<ServidorJuego>>.broadcast();

  GamingApiRepositoryImpl(this._client);

  @override
  Future<List<ServidorJuego>> getServidores() async {
    return _mockServers();
  }

  @override
  Stream<List<ServidorJuego>> watchServidores() {
    _emitPeriodically();
    return _controller.stream;
  }

  void _emitPeriodically() {
    _timer?.cancel();
    _emit();
    _timer = Timer.periodic(const Duration(seconds: 5), (_) => _emit());
  }

  void _emit() {
    _controller.add(_mockServers());
  }

  List<ServidorJuego> _mockServers() {
    final rng = Random();
    return [
      ServidorJuego(
        id: 'cs2_1',
        juego: 'CS2',
        servidor: 'cs2.latam.com',
        ubicacion: 'Santiago',
        pingMs: rng.nextInt(80) + 10,
        perdidaPaquetesPct: rng.nextDouble() * 2,
        jitterMs: rng.nextInt(15) + 1,
        estado: 'Online',
      ),
      ServidorJuego(
        id: 'cs2_2',
        juego: 'CS2',
        servidor: 'cs2.us-east.com',
        ubicacion: 'Miami',
        pingMs: rng.nextInt(120) + 30,
        perdidaPaquetesPct: rng.nextDouble() * 3,
        jitterMs: rng.nextInt(20) + 2,
        estado: 'Online',
      ),
      ServidorJuego(
        id: 'lol_1',
        juego: 'League of Legends',
        servidor: 'lol.las.com',
        ubicacion: 'Lima',
        pingMs: rng.nextInt(40) + 5,
        perdidaPaquetesPct: rng.nextDouble() * 1.5,
        jitterMs: rng.nextInt(10) + 1,
        estado: 'Online',
      ),
    ];
  }

  void dispose() {
    _timer?.cancel();
    _controller.close();
  }
}
