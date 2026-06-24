// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsEntity _$AppSettingsEntityFromJson(Map<String, dynamic> json) {
  return _AppSettingsEntity.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsEntity {
  String get terms => throw _privateConstructorUsedError;
  String get policies => throw _privateConstructorUsedError;
  String get planFreeSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsEntityCopyWith<AppSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsEntityCopyWith<$Res> {
  factory $AppSettingsEntityCopyWith(
          AppSettingsEntity value, $Res Function(AppSettingsEntity) then) =
      _$AppSettingsEntityCopyWithImpl<$Res, AppSettingsEntity>;
  @useResult
  $Res call({String terms, String policies, String planFreeSelected});
}

/// @nodoc
class _$AppSettingsEntityCopyWithImpl<$Res, $Val extends AppSettingsEntity>
    implements $AppSettingsEntityCopyWith<$Res> {
  _$AppSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = null,
    Object? policies = null,
    Object? planFreeSelected = null,
  }) {
    return _then(_value.copyWith(
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
      policies: null == policies
          ? _value.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as String,
      planFreeSelected: null == planFreeSelected
          ? _value.planFreeSelected
          : planFreeSelected // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsEntityImplCopyWith<$Res>
    implements $AppSettingsEntityCopyWith<$Res> {
  factory _$$AppSettingsEntityImplCopyWith(_$AppSettingsEntityImpl value,
          $Res Function(_$AppSettingsEntityImpl) then) =
      __$$AppSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String terms, String policies, String planFreeSelected});
}

/// @nodoc
class __$$AppSettingsEntityImplCopyWithImpl<$Res>
    extends _$AppSettingsEntityCopyWithImpl<$Res, _$AppSettingsEntityImpl>
    implements _$$AppSettingsEntityImplCopyWith<$Res> {
  __$$AppSettingsEntityImplCopyWithImpl(_$AppSettingsEntityImpl _value,
      $Res Function(_$AppSettingsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = null,
    Object? policies = null,
    Object? planFreeSelected = null,
  }) {
    return _then(_$AppSettingsEntityImpl(
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
      policies: null == policies
          ? _value.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as String,
      planFreeSelected: null == planFreeSelected
          ? _value.planFreeSelected
          : planFreeSelected // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsEntityImpl implements _AppSettingsEntity {
  const _$AppSettingsEntityImpl(
      {required this.terms,
      required this.policies,
      required this.planFreeSelected});

  factory _$AppSettingsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsEntityImplFromJson(json);

  @override
  final String terms;
  @override
  final String policies;
  @override
  final String planFreeSelected;

  @override
  String toString() {
    return 'AppSettingsEntity(terms: $terms, policies: $policies, planFreeSelected: $planFreeSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsEntityImpl &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.policies, policies) ||
                other.policies == policies) &&
            (identical(other.planFreeSelected, planFreeSelected) ||
                other.planFreeSelected == planFreeSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, terms, policies, planFreeSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsEntityImplCopyWith<_$AppSettingsEntityImpl> get copyWith =>
      __$$AppSettingsEntityImplCopyWithImpl<_$AppSettingsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsEntityImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsEntity implements AppSettingsEntity {
  const factory _AppSettingsEntity(
      {required final String terms,
      required final String policies,
      required final String planFreeSelected}) = _$AppSettingsEntityImpl;

  factory _AppSettingsEntity.fromJson(Map<String, dynamic> json) =
      _$AppSettingsEntityImpl.fromJson;

  @override
  String get terms;
  @override
  String get policies;
  @override
  String get planFreeSelected;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingsEntityImplCopyWith<_$AppSettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
