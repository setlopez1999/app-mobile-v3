import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/plan.entity.dart';
import 'package:tvapp/domain/repositories/plans.repository.dart';

part 'plans.state.g.dart';

@riverpod
class AsyncPlans extends _$AsyncPlans {
  final repository = PlansRepository();
  @override
  FutureOr<List<PlanEntity>> build() {
    return repository.getList();
  }
}
