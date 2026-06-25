// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensitive_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SensitiveDataEntity implements DiagnosticableTreeMixin {
  String get token;
  String get parental;
  String get email;
  String get userID;
  String get deviceId;

  /// Create a copy of SensitiveDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SensitiveDataEntityCopyWith<SensitiveDataEntity> get copyWith =>
      _$SensitiveDataEntityCopyWithImpl<SensitiveDataEntity>(
          this as SensitiveDataEntity, _$identity);

  /// Serializes this SensitiveDataEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SensitiveDataEntity'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('parental', parental))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('deviceId', deviceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SensitiveDataEntity &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.parental, parental) ||
                other.parental == parental) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, parental, email, userID, deviceId);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SensitiveDataEntity(token: $token, parental: $parental, email: $email, userID: $userID, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $SensitiveDataEntityCopyWith<$Res> {
  factory $SensitiveDataEntityCopyWith(
          SensitiveDataEntity value, $Res Function(SensitiveDataEntity) _then) =
      _$SensitiveDataEntityCopyWithImpl;
  @useResult
  $Res call(
      {String token,
      String parental,
      String email,
      String userID,
      String deviceId});
}

/// @nodoc
class _$SensitiveDataEntityCopyWithImpl<$Res>
    implements $SensitiveDataEntityCopyWith<$Res> {
  _$SensitiveDataEntityCopyWithImpl(this._self, this._then);

  final SensitiveDataEntity _self;
  final $Res Function(SensitiveDataEntity) _then;

  /// Create a copy of SensitiveDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? parental = null,
    Object? email = null,
    Object? userID = null,
    Object? deviceId = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      parental: null == parental
          ? _self.parental
          : parental // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SensitiveDataEntity].
extension SensitiveDataEntityPatterns on SensitiveDataEntity {
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
    TResult Function(_SensitiveDataEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SensitiveDataEntity() when $default != null:
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
    TResult Function(_SensitiveDataEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SensitiveDataEntity():
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
    TResult? Function(_SensitiveDataEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SensitiveDataEntity() when $default != null:
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
    TResult Function(String token, String parental, String email, String userID,
            String deviceId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SensitiveDataEntity() when $default != null:
        return $default(_that.token, _that.parental, _that.email, _that.userID,
            _that.deviceId);
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
    TResult Function(String token, String parental, String email, String userID,
            String deviceId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SensitiveDataEntity():
        return $default(_that.token, _that.parental, _that.email, _that.userID,
            _that.deviceId);
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
    TResult? Function(String token, String parental, String email,
            String userID, String deviceId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SensitiveDataEntity() when $default != null:
        return $default(_that.token, _that.parental, _that.email, _that.userID,
            _that.deviceId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SensitiveDataEntity
    with DiagnosticableTreeMixin
    implements SensitiveDataEntity {
  const _SensitiveDataEntity(
      {required this.token,
      required this.parental,
      required this.email,
      required this.userID,
      required this.deviceId});
  factory _SensitiveDataEntity.fromJson(Map<String, dynamic> json) =>
      _$SensitiveDataEntityFromJson(json);

  @override
  final String token;
  @override
  final String parental;
  @override
  final String email;
  @override
  final String userID;
  @override
  final String deviceId;

  /// Create a copy of SensitiveDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SensitiveDataEntityCopyWith<_SensitiveDataEntity> get copyWith =>
      __$SensitiveDataEntityCopyWithImpl<_SensitiveDataEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SensitiveDataEntityToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SensitiveDataEntity'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('parental', parental))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('deviceId', deviceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SensitiveDataEntity &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.parental, parental) ||
                other.parental == parental) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, parental, email, userID, deviceId);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SensitiveDataEntity(token: $token, parental: $parental, email: $email, userID: $userID, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$SensitiveDataEntityCopyWith<$Res>
    implements $SensitiveDataEntityCopyWith<$Res> {
  factory _$SensitiveDataEntityCopyWith(_SensitiveDataEntity value,
          $Res Function(_SensitiveDataEntity) _then) =
      __$SensitiveDataEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String token,
      String parental,
      String email,
      String userID,
      String deviceId});
}

/// @nodoc
class __$SensitiveDataEntityCopyWithImpl<$Res>
    implements _$SensitiveDataEntityCopyWith<$Res> {
  __$SensitiveDataEntityCopyWithImpl(this._self, this._then);

  final _SensitiveDataEntity _self;
  final $Res Function(_SensitiveDataEntity) _then;

  /// Create a copy of SensitiveDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? parental = null,
    Object? email = null,
    Object? userID = null,
    Object? deviceId = null,
  }) {
    return _then(_SensitiveDataEntity(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      parental: null == parental
          ? _self.parental
          : parental // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
