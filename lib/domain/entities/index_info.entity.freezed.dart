// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_info.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndexInfo _$IndexInfoFromJson(Map<String, dynamic> json) {
  return _IndexInfo.fromJson(json);
}

/// @nodoc
mixin _$IndexInfo {
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  String get plan => throw _privateConstructorUsedError;
  String get planId => throw _privateConstructorUsedError;

  /// Serializes this IndexInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndexInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexInfoCopyWith<IndexInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexInfoCopyWith<$Res> {
  factory $IndexInfoCopyWith(IndexInfo value, $Res Function(IndexInfo) then) =
      _$IndexInfoCopyWithImpl<$Res, IndexInfo>;
  @useResult
  $Res call({List<CategoryEntity> categories, String plan, String planId});
}

/// @nodoc
class _$IndexInfoCopyWithImpl<$Res, $Val extends IndexInfo>
    implements $IndexInfoCopyWith<$Res> {
  _$IndexInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndexInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? plan = null,
    Object? planId = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexInfoImplCopyWith<$Res>
    implements $IndexInfoCopyWith<$Res> {
  factory _$$IndexInfoImplCopyWith(
          _$IndexInfoImpl value, $Res Function(_$IndexInfoImpl) then) =
      __$$IndexInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryEntity> categories, String plan, String planId});
}

/// @nodoc
class __$$IndexInfoImplCopyWithImpl<$Res>
    extends _$IndexInfoCopyWithImpl<$Res, _$IndexInfoImpl>
    implements _$$IndexInfoImplCopyWith<$Res> {
  __$$IndexInfoImplCopyWithImpl(
      _$IndexInfoImpl _value, $Res Function(_$IndexInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of IndexInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? plan = null,
    Object? planId = null,
  }) {
    return _then(_$IndexInfoImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexInfoImpl implements _IndexInfo {
  const _$IndexInfoImpl(
      {required final List<CategoryEntity> categories,
      required this.plan,
      required this.planId})
      : _categories = categories;

  factory _$IndexInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexInfoImplFromJson(json);

  final List<CategoryEntity> _categories;
  @override
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String plan;
  @override
  final String planId;

  @override
  String toString() {
    return 'IndexInfo(categories: $categories, plan: $plan, planId: $planId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.planId, planId) || other.planId == planId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), plan, planId);

  /// Create a copy of IndexInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexInfoImplCopyWith<_$IndexInfoImpl> get copyWith =>
      __$$IndexInfoImplCopyWithImpl<_$IndexInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexInfoImplToJson(
      this,
    );
  }
}

abstract class _IndexInfo implements IndexInfo {
  const factory _IndexInfo(
      {required final List<CategoryEntity> categories,
      required final String plan,
      required final String planId}) = _$IndexInfoImpl;

  factory _IndexInfo.fromJson(Map<String, dynamic> json) =
      _$IndexInfoImpl.fromJson;

  @override
  List<CategoryEntity> get categories;
  @override
  String get plan;
  @override
  String get planId;

  /// Create a copy of IndexInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexInfoImplCopyWith<_$IndexInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
