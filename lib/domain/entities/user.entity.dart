import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.entity.freezed.dart';
part 'user.entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String email,
    required String nombres,
    required String nacimiento,
    @Default('') String? paterno,
    @Default('') String? materno,
    @Default('') String? direccion,
    @Default('') String? comuna,
    @Default('') String? region,
    @Default('') String? pais,
    String? token,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
