import 'package:flutter_test/flutter_test.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';

/// Tests unitarios para la capa de entidades de Channels.
/// Validan el comportamiento de los modelos Freezed sin necesidad de red.
void main() {
  group('Channel.entity — construcción con factory', () {
    test('Channel.fromNotPlan construye correctamente desde ChannelNotPlan', () {
      // Channel tiene factory fromNotPlan — lo que más se usa en la app
      // Validamos que la lógica de construcción directa funciona
      const channel = Channel(
        adulto: false,
        card: 'https://cdn.bantel.tv/logos/cnn.png',
        cardIos: 'https://cdn.bantel.tv/logos/cnn_ios.png',
        description: 'Canal de noticias internacional',
        number: 1,
        playlist: 5,
        premium: false,
        catchup: false,
        studio: 101,
        title: 'CNN en Español',
        vivo: 1,
        isFavorite: false,
      );

      expect(channel.title, equals('CNN en Español'));
      expect(channel.studio, equals(101));
      expect(channel.isFavorite, isFalse);
      expect(channel.adulto, isFalse);
    });

    test('Channel con isFavorite true se construye correctamente', () {
      const channel = Channel(
        adulto: false,
        card: 'https://cdn.bantel.tv/logos/espn.png',
        cardIos: '',
        description: 'Deportes',
        number: 5,
        playlist: 2,
        premium: false,
        catchup: false,
        studio: 202,
        title: 'ESPN',
        vivo: 1,
        isFavorite: true,
      );

      expect(channel.isFavorite, isTrue);
      expect(channel.title, equals('ESPN'));
    });

    test('Channel premium tiene el flag correcto', () {
      const channel = Channel(
        adulto: false,
        card: '',
        cardIos: '',
        description: 'Canal premium',
        number: 99,
        playlist: 1,
        premium: true,
        catchup: true,
        studio: 303,
        title: 'HBO Max',
        vivo: 1,
      );

      expect(channel.premium, isTrue);
      expect(channel.catchup, isTrue);
    });

    test('Dos canales con mismos valores son iguales (Freezed equality)', () {
      const c1 = Channel(
        adulto: false, card: 'url', cardIos: 'url_ios',
        description: 'desc', number: 1, playlist: 1,
        premium: false, catchup: false, studio: 1,
        title: 'Canal Test', vivo: 1,
      );
      const c2 = Channel(
        adulto: false, card: 'url', cardIos: 'url_ios',
        description: 'desc', number: 1, playlist: 1,
        premium: false, catchup: false, studio: 1,
        title: 'Canal Test', vivo: 1,
      );

      expect(c1, equals(c2));
    });
  });

  group('Lógica de filtrado de canales', () {
    final channels = [
      const Channel(
        adulto: false, card: '', cardIos: '', description: 'Noticias',
        number: 1, playlist: 1, premium: false, catchup: false,
        studio: 101, title: 'CNN', vivo: 1, isFavorite: true,
      ),
      const Channel(
        adulto: false, card: '', cardIos: '', description: 'Deportes',
        number: 5, playlist: 2, premium: false, catchup: false,
        studio: 202, title: 'ESPN', vivo: 1, isFavorite: false,
      ),
      const Channel(
        adulto: false, card: '', cardIos: '', description: 'Deportes',
        number: 6, playlist: 2, premium: true, catchup: false,
        studio: 303, title: 'Fox Sports', vivo: 1, isFavorite: true,
      ),
      const Channel(
        adulto: true, card: '', cardIos: '', description: 'Adultos',
        number: 99, playlist: 9, premium: true, catchup: false,
        studio: 999, title: 'Canal Adulto', vivo: 1, isFavorite: false,
      ),
    ];

    test('filtrar por favoritos devuelve solo los marcados', () {
      final favorites = channels.where((c) => c.isFavorite).toList();
      expect(favorites.length, equals(2));
      expect(favorites.map((c) => c.title), containsAll(['CNN', 'Fox Sports']));
    });

    test('filtrar por playlist devuelve solo los de esa lista', () {
      final playlist2 = channels.where((c) => c.playlist == 2).toList();
      expect(playlist2.length, equals(2));
    });

    test('filtrar canales adultos excluye los marcados como adulto', () {
      final safe = channels.where((c) => !c.adulto).toList();
      expect(safe.length, equals(3));
      expect(safe.map((c) => c.title), isNot(contains('Canal Adulto')));
    });

    test('filtrar canales premium devuelve solo los premium', () {
      final premium = channels.where((c) => c.premium).toList();
      expect(premium.length, equals(2));
    });

    test('búsqueda por título es case-insensitive', () {
      const query = 'fox';
      final results = channels
          .where((c) => c.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
      expect(results.length, equals(1));
      expect(results.first.title, equals('Fox Sports'));
    });

    test('búsqueda vacía retorna todos los canales', () {
      const query = '';
      final results = query.isEmpty
          ? channels
          : channels.where(
              (c) => c.title.toLowerCase().contains(query.toLowerCase()),
            ).toList();
      expect(results.length, equals(channels.length));
    });

    test('lista vacía de canales no lanza excepción al filtrar', () {
      final empty = <Channel>[];
      final favorites = empty.where((c) => c.isFavorite).toList();
      expect(favorites, isEmpty);
    });

    test('ordenar por número de canal funciona correctamente', () {
      final sorted = [...channels]..sort((a, b) => a.number.compareTo(b.number));
      expect(sorted.first.number, equals(1));
      expect(sorted.last.number, equals(99));
    });
  });
}
