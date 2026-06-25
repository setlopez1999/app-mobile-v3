// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notifications_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
GetNotificationsDto _$GetNotificationsDtoFromJson(Map<String, dynamic> json) {
  return _GetNotificationDto.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationsDto {
  List<NotificationEntity> get message;

  /// Create a copy of GetNotificationsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetNotificationsDtoCopyWith<GetNotificationsDto> get copyWith =>
      _$GetNotificationsDtoCopyWithImpl<GetNotificationsDto>(
          this as GetNotificationsDto, _$identity);

  /// Serializes this GetNotificationsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetNotificationsDto &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @override
  String toString() {
    return 'GetNotificationsDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class $GetNotificationsDtoCopyWith<$Res> {
  factory $GetNotificationsDtoCopyWith(
          GetNotificationsDto value, $Res Function(GetNotificationsDto) _then) =
      _$GetNotificationsDtoCopyWithImpl;
  @useResult
  $Res call({List<NotificationEntity> message});
}

/// @nodoc
class _$GetNotificationsDtoCopyWithImpl<$Res>
    implements $GetNotificationsDtoCopyWith<$Res> {
  _$GetNotificationsDtoCopyWithImpl(this._self, this._then);

  final GetNotificationsDto _self;
  final $Res Function(GetNotificationsDto) _then;

  /// Create a copy of GetNotificationsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetNotificationsDto].
extension GetNotificationsDtoPatterns on GetNotificationsDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GetNotificationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotificationDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GetNotificationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetNotificationDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GetNotificationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetNotificationDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NotificationEntity> message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotificationDto() when $default != null:
        return $default(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<NotificationEntity> message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetNotificationDto():
        return $default(_that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NotificationEntity> message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetNotificationDto() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetNotificationDto implements GetNotificationsDto {
  const _GetNotificationDto({required final List<NotificationEntity> message})
      : _message = message;
  factory _GetNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationDtoFromJson(json);

  final List<NotificationEntity> _message;
  @override
  List<NotificationEntity> get message {
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  /// Create a copy of GetNotificationsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetNotificationDtoCopyWith<_GetNotificationDto> get copyWith =>
      __$GetNotificationDtoCopyWithImpl<_GetNotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetNotificationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNotificationDto &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  @override
  String toString() {
    return 'GetNotificationsDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$GetNotificationDtoCopyWith<$Res>
    implements $GetNotificationsDtoCopyWith<$Res> {
  factory _$GetNotificationDtoCopyWith(
          _GetNotificationDto value, $Res Function(_GetNotificationDto) _then) =
      __$GetNotificationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<NotificationEntity> message});
}

/// @nodoc
class __$GetNotificationDtoCopyWithImpl<$Res>
    implements _$GetNotificationDtoCopyWith<$Res> {
  __$GetNotificationDtoCopyWithImpl(this._self, this._then);

  final _GetNotificationDto _self;
  final $Res Function(_GetNotificationDto) _then;

  /// Create a copy of GetNotificationsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_GetNotificationDto(
      message: null == message
          ? _self._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
    ));
  }
}

// dart format on
