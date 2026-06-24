import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/program_guide.entity.dart';
import 'package:tvapp/domain/repositories/epg.repository.dart';

part 'epg.state.g.dart';

@riverpod
class EpgState extends _$EpgState {
  final repository = EpgRepository();
  @override
  FutureOr<List<TvGuideEntity>> build() {
    return repository.getList();
  }
}
