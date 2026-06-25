// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifyme_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotifymeEntity {
  int get cn_id;
  String get text;
  int get user_id;
  String get scheduled_date;
  String get key;

  /// Create a copy of NotifymeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotifymeEntityCopyWith<NotifymeEntity> get copyWith =>
      _$NotifymeEntityCopyWithImpl<NotifymeEntity>(
          this as NotifymeEntity, _$identity);

  /// Serializes this NotifymeEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotifymeEntity &&
            (identical(other.cn_id, cn_id) || other.cn_id == cn_id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.scheduled_date, scheduled_date) ||
                other.scheduled_date == scheduled_date) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cn_id, text, user_id, scheduled_date, key);

  @override
  String toString() {
    return 'NotifymeEntity(cn_id: $cn_id, text: $text, user_id: $user_id, scheduled_date: $scheduled_date, key: $key)';
  }
}

/// @nodoc
abstract mixin class $NotifymeEntityCopyWith<$Res> {
  factory $NotifymeEntityCopyWith(
          NotifymeEntity value, $Res Function(NotifymeEntity) _then) =
      _$NotifymeEntityCopyWithImpl;
  @useResult
  $Res call(
      {int cn_id, String text, int user_id, String scheduled_date, String key});
}

/// @nodoc
class _$NotifymeEntityCopyWithImpl<$Res>
    implements $NotifymeEntityCopyWith<$Res> {
  _$NotifymeEntityCopyWithImpl(this._self, this._then);

  final NotifymeEntity _self;
  final $Res Function(NotifymeEntity) _then;

  /// Create a copy of NotifymeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cn_id = null,
    Object? text = null,
    Object? user_id = null,
    Object? scheduled_date = null,
    Object? key = null,
  }) {
    return _then(_self.copyWith(
      cn_id: null == cn_id
          ? _self.cn_id
          : cn_id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      scheduled_date: null == scheduled_date
          ? _self.scheduled_date
          : scheduled_date // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotifymeEntity].
extension NotifymeEntityPatterns on NotifymeEntity {
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
    TResult Function(_NotifymeEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotifymeEntity() when $default != null:
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
    TResult Function(_NotifymeEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotifymeEntity():
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
    TResult? Function(_NotifymeEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotifymeEntity() when $default != null:
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
    TResult Function(int cn_id, String text, int user_id, String scheduled_date,
            String key)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotifymeEntity() when $default != null:
        return $default(_that.cn_id, _that.text, _that.user_id,
            _that.scheduled_date, _that.key);
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
    TResult Function(int cn_id, String text, int user_id, String scheduled_date,
            String key)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotifymeEntity():
        return $default(_that.cn_id, _that.text, _that.user_id,
            _that.scheduled_date, _that.key);
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
    TResult? Function(int cn_id, String text, int user_id,
            String scheduled_date, String key)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotifymeEntity() when $default != null:
        return $default(_that.cn_id, _that.text, _that.user_id,
            _that.scheduled_date, _that.key);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotifymeEntity implements NotifymeEntity {
  const _NotifymeEntity(
      {required this.cn_id,
      required this.text,
      required this.user_id,
      required this.scheduled_date,
      required this.key});
  factory _NotifymeEntity.fromJson(Map<String, dynamic> json) =>
      _$NotifymeEntityFromJson(json);

  @override
  final int cn_id;
  @override
  final String text;
  @override
  final int user_id;
  @override
  final String scheduled_date;
  @override
  final String key;

  /// Create a copy of NotifymeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotifymeEntityCopyWith<_NotifymeEntity> get copyWith =>
      __$NotifymeEntityCopyWithImpl<_NotifymeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotifymeEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotifymeEntity &&
            (identical(other.cn_id, cn_id) || other.cn_id == cn_id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.scheduled_date, scheduled_date) ||
                other.scheduled_date == scheduled_date) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cn_id, text, user_id, scheduled_date, key);

  @override
  String toString() {
    return 'NotifymeEntity(cn_id: $cn_id, text: $text, user_id: $user_id, scheduled_date: $scheduled_date, key: $key)';
  }
}

/// @nodoc
abstract mixin class _$NotifymeEntityCopyWith<$Res>
    implements $NotifymeEntityCopyWith<$Res> {
  factory _$NotifymeEntityCopyWith(
          _NotifymeEntity value, $Res Function(_NotifymeEntity) _then) =
      __$NotifymeEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int cn_id, String text, int user_id, String scheduled_date, String key});
}

/// @nodoc
class __$NotifymeEntityCopyWithImpl<$Res>
    implements _$NotifymeEntityCopyWith<$Res> {
  __$NotifymeEntityCopyWithImpl(this._self, this._then);

  final _NotifymeEntity _self;
  final $Res Function(_NotifymeEntity) _then;

  /// Create a copy of NotifymeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cn_id = null,
    Object? text = null,
    Object? user_id = null,
    Object? scheduled_date = null,
    Object? key = null,
  }) {
    return _then(_NotifymeEntity(
      cn_id: null == cn_id
          ? _self.cn_id
          : cn_id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      scheduled_date: null == scheduled_date
          ? _self.scheduled_date
          : scheduled_date // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
