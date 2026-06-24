import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/location.entity.dart';
import 'package:tvapp/domain/repositories/provinces.repository.dart';

part 'province.state.g.dart';

/// Provinces
@riverpod
class Provinces extends _$Provinces {
  final repository = ProvincesRepository();

  @override
  Future<List<LocationEntity>> build() {
    return Future.value([]);
  }

  Future<void> change(String departmentCode) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() {
      return repository.getList(departmentCode);
    });
  }
}
