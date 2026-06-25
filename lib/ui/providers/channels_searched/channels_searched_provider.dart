import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/core/application/states/auth/auth_state.dart';
import 'package:tvapp/core/application/states/content/content_state.dart';
import 'package:tvapp/core/application/use_cases/auth/get_session_use_case.dart';
import 'package:tvapp/core/application/use_cases/content/get_all_channels_use_case.dart';
import 'package:tvapp/core/application/use_cases/content/get_favorites_use_case.dart';
import 'package:tvapp/core/domain/entities/channel/channel_entity.dart';
import 'package:tvapp/core/infraestructure/repositories/auth_http_repository.dart';
import 'package:tvapp/core/infraestructure/repositories/channels_http_repository.dart';
import 'package:tvapp/ui/providers/auth/auth_provider.dart';

part 'channels_searched_provider.g.dart';

@Riverpod(keepAlive: true)
class ChannelsSearched extends _$ChannelsSearched {
  @override
  ContentState<List<Channel>> build() {
    return const ContentState.initial();
  }

  Future<void> get({bool favorites = false}) async {
    state = const ContentState.loading();
    final repository = ChannelsHttpRepository();
    final useCase = GetAllChannelsUseCase(repository);
    final favoritesUseCase = GetFavoritesUseCase(repository);

    if(favorites) {
      final authRepository = AuthHttpRepository();
      final sessionUsecase = GetSessionUseCase(authRepository);

      final session = await sessionUsecase.execute();

      session.fold((error) => state = ContentState.error(error), (session) async {
        final result = await favoritesUseCase.execute(session.email);
        result.fold(
              (error) => state = ContentState.error(error),
              (content) => state = ContentState.success(content),
        );
      });
      return;
    }

    await ref.read(authProvider).maybeWhen(
      success: (user) async {
        final result =await useCase.execute(user.token);
        result.fold(
          (error) => state = ContentState.error(error),
          (content) => state = ContentState.success(content),
        );
      },
      orElse: () {},
    );
  }
}