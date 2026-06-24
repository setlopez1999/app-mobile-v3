import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvapp/domain/entities/user.entity.dart';
import 'package:tvapp/domain/repositories/auth.repository.dart';

part 'current_user.state.g.dart';

/// CurrentUser Provider
@riverpod
class CurrentUser extends _$CurrentUser {
  final repository = AuthRepository();
  final _prefs = SharedPreferences.getInstance();
  @override
  FutureOr<UserEntity> build() async {
    final prefs = await _prefs;
    final email = prefs.getString('email');
    return repository.getUser(email!);
  }
}
