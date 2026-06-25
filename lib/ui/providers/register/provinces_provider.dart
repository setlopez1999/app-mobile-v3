import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/core/application/states/content/content_state.dart';
import 'package:tvapp/core/application/use_cases/location/get_provinces_use_case.dart';
import 'package:tvapp/core/domain/entities/location/location.entity.dart';
import 'package:tvapp/core/infraestructure/repositories/location_http_repository.dart';

part 'provinces_provider.g.dart';

/// Provinces
@riverpod
class Provinces extends _$Provinces {

  @override
  ContentState<List<LocationEntity>> build() {
    return const ContentState.initial();
  }

  Future<void> change(String departmentCode) async {
    final repository = LocationHttpRepository();
    final useCase = GetProvincesUseCase(repository);

    state = const ContentState.loading();

    final result = await useCase.execute(departmentCode);
    result.fold(
      (err) => state = ContentState.error(err),
      (data) => state = ContentState.success(data),
    );
  }

  void reset() {
    state = const ContentState.initial();
  }
}