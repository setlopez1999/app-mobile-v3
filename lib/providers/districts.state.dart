import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/location.entity.dart';
import 'package:tvapp/domain/repositories/districts.repository.dart';

part 'districts.state.g.dart';

@riverpod
class Districts extends _$Districts {
  final repository = DistrictsRepository();

  @override
  Future<List<LocationEntity>> build() {
    return Future.value([]);
  }

  Future<void> change(String departmentCode, String provinceCode) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() {
      return repository.getList(departmentCode, provinceCode);
    });
  }

  void reset() {
    state = const AsyncValue.data([]);
  }
}
