import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/location.entity.dart';
import 'package:tvapp/domain/repositories/departments.repository.dart';

part 'departments.state.g.dart';

/// Departments
@riverpod
class Departments extends _$Departments {
  final repository = DepartmentsRepository();

  @override
  Future<List<LocationEntity>> build() {
    return repository.getList();
  }
}
