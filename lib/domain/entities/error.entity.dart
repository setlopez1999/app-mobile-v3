import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.entity.freezed.dart';
part 'error.entity.g.dart';

@freezed
class ErrorEntity with _$ErrorEntity {
  const factory ErrorEntity({
    required int code,
    required String message,
  }) = _ErrorEntity;

  factory ErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorEntityFromJson(json);
}
