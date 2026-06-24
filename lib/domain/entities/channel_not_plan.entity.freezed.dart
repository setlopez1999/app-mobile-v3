// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_not_plan.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelNotPlan _$ChannelNotPlanFromJson(Map<String, dynamic> json) {
  return _ChannelNotPlan.fromJson(json);
}

/// @nodoc
mixin _$ChannelNotPlan {
  String get card => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get studio => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelNotPlanCopyWith<ChannelNotPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelNotPlanCopyWith<$Res> {
  factory $ChannelNotPlanCopyWith(
          ChannelNotPlan value, $Res Function(ChannelNotPlan) then) =
      _$ChannelNotPlanCopyWithImpl<$Res, ChannelNotPlan>;
  @useResult
  $Res call(
      {String card,
      String description,
      int number,
      int studio,
      String title,
      bool isFavorite});
}

/// @nodoc
class _$ChannelNotPlanCopyWithImpl<$Res, $Val extends ChannelNotPlan>
    implements $ChannelNotPlanCopyWith<$Res> {
  _$ChannelNotPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
    Object? description = null,
    Object? number = null,
    Object? studio = null,
    Object? title = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      studio: null == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelNotPlanImplCopyWith<$Res>
    implements $ChannelNotPlanCopyWith<$Res> {
  factory _$$ChannelNotPlanImplCopyWith(_$ChannelNotPlanImpl value,
          $Res Function(_$ChannelNotPlanImpl) then) =
      __$$ChannelNotPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String card,
      String description,
      int number,
      int studio,
      String title,
      bool isFavorite});
}

/// @nodoc
class __$$ChannelNotPlanImplCopyWithImpl<$Res>
    extends _$ChannelNotPlanCopyWithImpl<$Res, _$ChannelNotPlanImpl>
    implements _$$ChannelNotPlanImplCopyWith<$Res> {
  __$$ChannelNotPlanImplCopyWithImpl(
      _$ChannelNotPlanImpl _value, $Res Function(_$ChannelNotPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
    Object? description = null,
    Object? number = null,
    Object? studio = null,
    Object? title = null,
    Object? isFavorite = null,
  }) {
    return _then(_$ChannelNotPlanImpl(
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      studio: null == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelNotPlanImpl implements _ChannelNotPlan {
  const _$ChannelNotPlanImpl(
      {required this.card,
      required this.description,
      required this.number,
      required this.studio,
      required this.title,
      required this.isFavorite});

  factory _$ChannelNotPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelNotPlanImplFromJson(json);

  @override
  final String card;
  @override
  final String description;
  @override
  final int number;
  @override
  final int studio;
  @override
  final String title;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'ChannelNotPlan(card: $card, description: $description, number: $number, studio: $studio, title: $title, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelNotPlanImpl &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.studio, studio) || other.studio == studio) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, card, description, number, studio, title, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelNotPlanImplCopyWith<_$ChannelNotPlanImpl> get copyWith =>
      __$$ChannelNotPlanImplCopyWithImpl<_$ChannelNotPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelNotPlanImplToJson(
      this,
    );
  }
}

abstract class _ChannelNotPlan implements ChannelNotPlan {
  const factory _ChannelNotPlan(
      {required final String card,
      required final String description,
      required final int number,
      required final int studio,
      required final String title,
      required final bool isFavorite}) = _$ChannelNotPlanImpl;

  factory _ChannelNotPlan.fromJson(Map<String, dynamic> json) =
      _$ChannelNotPlanImpl.fromJson;

  @override
  String get card;
  @override
  String get description;
  @override
  int get number;
  @override
  int get studio;
  @override
  String get title;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$ChannelNotPlanImplCopyWith<_$ChannelNotPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
