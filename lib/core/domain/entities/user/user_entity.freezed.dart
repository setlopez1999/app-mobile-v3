// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User implements DiagnosticableTreeMixin {
  int get factor;
  String get icono;
  String get limit_movil;
  String get parentlockcode;
  String get timezone;
  String get token;
  dynamic get urlip;
  String get us_id;
  bool get useurlip;
  String get usuario;
  String get devid;
  bool? get enabledvod;
  String? get vencimientoplan;
  String? get plan;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('factor', factor))
      ..add(DiagnosticsProperty('icono', icono))
      ..add(DiagnosticsProperty('limit_movil', limit_movil))
      ..add(DiagnosticsProperty('parentlockcode', parentlockcode))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('urlip', urlip))
      ..add(DiagnosticsProperty('us_id', us_id))
      ..add(DiagnosticsProperty('useurlip', useurlip))
      ..add(DiagnosticsProperty('usuario', usuario))
      ..add(DiagnosticsProperty('devid', devid))
      ..add(DiagnosticsProperty('enabledvod', enabledvod))
      ..add(DiagnosticsProperty('vencimientoplan', vencimientoplan))
      ..add(DiagnosticsProperty('plan', plan));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.icono, icono) || other.icono == icono) &&
            (identical(other.limit_movil, limit_movil) ||
                other.limit_movil == limit_movil) &&
            (identical(other.parentlockcode, parentlockcode) ||
                other.parentlockcode == parentlockcode) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other.urlip, urlip) &&
            (identical(other.us_id, us_id) || other.us_id == us_id) &&
            (identical(other.useurlip, useurlip) ||
                other.useurlip == useurlip) &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.devid, devid) || other.devid == devid) &&
            (identical(other.enabledvod, enabledvod) ||
                other.enabledvod == enabledvod) &&
            (identical(other.vencimientoplan, vencimientoplan) ||
                other.vencimientoplan == vencimientoplan) &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      factor,
      icono,
      limit_movil,
      parentlockcode,
      timezone,
      token,
      const DeepCollectionEquality().hash(urlip),
      us_id,
      useurlip,
      usuario,
      devid,
      enabledvod,
      vencimientoplan,
      plan);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(factor: $factor, icono: $icono, limit_movil: $limit_movil, parentlockcode: $parentlockcode, timezone: $timezone, token: $token, urlip: $urlip, us_id: $us_id, useurlip: $useurlip, usuario: $usuario, devid: $devid, enabledvod: $enabledvod, vencimientoplan: $vencimientoplan, plan: $plan)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {int factor,
      String icono,
      String limit_movil,
      String parentlockcode,
      String timezone,
      String token,
      dynamic urlip,
      String us_id,
      bool useurlip,
      String usuario,
      String devid,
      bool? enabledvod,
      String? vencimientoplan,
      String? plan});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factor = null,
    Object? icono = null,
    Object? limit_movil = null,
    Object? parentlockcode = null,
    Object? timezone = null,
    Object? token = null,
    Object? urlip = freezed,
    Object? us_id = null,
    Object? useurlip = null,
    Object? usuario = null,
    Object? devid = null,
    Object? enabledvod = freezed,
    Object? vencimientoplan = freezed,
    Object? plan = freezed,
  }) {
    return _then(_self.copyWith(
      factor: null == factor
          ? _self.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as int,
      icono: null == icono
          ? _self.icono
          : icono // ignore: cast_nullable_to_non_nullable
              as String,
      limit_movil: null == limit_movil
          ? _self.limit_movil
          : limit_movil // ignore: cast_nullable_to_non_nullable
              as String,
      parentlockcode: null == parentlockcode
          ? _self.parentlockcode
          : parentlockcode // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      urlip: freezed == urlip
          ? _self.urlip
          : urlip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      us_id: null == us_id
          ? _self.us_id
          : us_id // ignore: cast_nullable_to_non_nullable
              as String,
      useurlip: null == useurlip
          ? _self.useurlip
          : useurlip // ignore: cast_nullable_to_non_nullable
              as bool,
      usuario: null == usuario
          ? _self.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      devid: null == devid
          ? _self.devid
          : devid // ignore: cast_nullable_to_non_nullable
              as String,
      enabledvod: freezed == enabledvod
          ? _self.enabledvod
          : enabledvod // ignore: cast_nullable_to_non_nullable
              as bool?,
      vencimientoplan: freezed == vencimientoplan
          ? _self.vencimientoplan
          : vencimientoplan // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _self.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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
    TResult Function(_User value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
    TResult Function(_User value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
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
    TResult? Function(_User value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
    TResult Function(
            int factor,
            String icono,
            String limit_movil,
            String parentlockcode,
            String timezone,
            String token,
            dynamic urlip,
            String us_id,
            bool useurlip,
            String usuario,
            String devid,
            bool? enabledvod,
            String? vencimientoplan,
            String? plan)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(
            _that.factor,
            _that.icono,
            _that.limit_movil,
            _that.parentlockcode,
            _that.timezone,
            _that.token,
            _that.urlip,
            _that.us_id,
            _that.useurlip,
            _that.usuario,
            _that.devid,
            _that.enabledvod,
            _that.vencimientoplan,
            _that.plan);
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
    TResult Function(
            int factor,
            String icono,
            String limit_movil,
            String parentlockcode,
            String timezone,
            String token,
            dynamic urlip,
            String us_id,
            bool useurlip,
            String usuario,
            String devid,
            bool? enabledvod,
            String? vencimientoplan,
            String? plan)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(
            _that.factor,
            _that.icono,
            _that.limit_movil,
            _that.parentlockcode,
            _that.timezone,
            _that.token,
            _that.urlip,
            _that.us_id,
            _that.useurlip,
            _that.usuario,
            _that.devid,
            _that.enabledvod,
            _that.vencimientoplan,
            _that.plan);
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
    TResult? Function(
            int factor,
            String icono,
            String limit_movil,
            String parentlockcode,
            String timezone,
            String token,
            dynamic urlip,
            String us_id,
            bool useurlip,
            String usuario,
            String devid,
            bool? enabledvod,
            String? vencimientoplan,
            String? plan)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(
            _that.factor,
            _that.icono,
            _that.limit_movil,
            _that.parentlockcode,
            _that.timezone,
            _that.token,
            _that.urlip,
            _that.us_id,
            _that.useurlip,
            _that.usuario,
            _that.devid,
            _that.enabledvod,
            _that.vencimientoplan,
            _that.plan);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _User with DiagnosticableTreeMixin implements User {
  const _User(
      {required this.factor,
      required this.icono,
      required this.limit_movil,
      required this.parentlockcode,
      required this.timezone,
      required this.token,
      this.urlip = '',
      required this.us_id,
      this.useurlip = false,
      required this.usuario,
      required this.devid,
      this.enabledvod,
      this.vencimientoplan,
      this.plan});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  final int factor;
  @override
  final String icono;
  @override
  final String limit_movil;
  @override
  final String parentlockcode;
  @override
  final String timezone;
  @override
  final String token;
  @override
  @JsonKey()
  final dynamic urlip;
  @override
  final String us_id;
  @override
  @JsonKey()
  final bool useurlip;
  @override
  final String usuario;
  @override
  final String devid;
  @override
  final bool? enabledvod;
  @override
  final String? vencimientoplan;
  @override
  final String? plan;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('factor', factor))
      ..add(DiagnosticsProperty('icono', icono))
      ..add(DiagnosticsProperty('limit_movil', limit_movil))
      ..add(DiagnosticsProperty('parentlockcode', parentlockcode))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('urlip', urlip))
      ..add(DiagnosticsProperty('us_id', us_id))
      ..add(DiagnosticsProperty('useurlip', useurlip))
      ..add(DiagnosticsProperty('usuario', usuario))
      ..add(DiagnosticsProperty('devid', devid))
      ..add(DiagnosticsProperty('enabledvod', enabledvod))
      ..add(DiagnosticsProperty('vencimientoplan', vencimientoplan))
      ..add(DiagnosticsProperty('plan', plan));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.icono, icono) || other.icono == icono) &&
            (identical(other.limit_movil, limit_movil) ||
                other.limit_movil == limit_movil) &&
            (identical(other.parentlockcode, parentlockcode) ||
                other.parentlockcode == parentlockcode) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other.urlip, urlip) &&
            (identical(other.us_id, us_id) || other.us_id == us_id) &&
            (identical(other.useurlip, useurlip) ||
                other.useurlip == useurlip) &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.devid, devid) || other.devid == devid) &&
            (identical(other.enabledvod, enabledvod) ||
                other.enabledvod == enabledvod) &&
            (identical(other.vencimientoplan, vencimientoplan) ||
                other.vencimientoplan == vencimientoplan) &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      factor,
      icono,
      limit_movil,
      parentlockcode,
      timezone,
      token,
      const DeepCollectionEquality().hash(urlip),
      us_id,
      useurlip,
      usuario,
      devid,
      enabledvod,
      vencimientoplan,
      plan);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(factor: $factor, icono: $icono, limit_movil: $limit_movil, parentlockcode: $parentlockcode, timezone: $timezone, token: $token, urlip: $urlip, us_id: $us_id, useurlip: $useurlip, usuario: $usuario, devid: $devid, enabledvod: $enabledvod, vencimientoplan: $vencimientoplan, plan: $plan)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int factor,
      String icono,
      String limit_movil,
      String parentlockcode,
      String timezone,
      String token,
      dynamic urlip,
      String us_id,
      bool useurlip,
      String usuario,
      String devid,
      bool? enabledvod,
      String? vencimientoplan,
      String? plan});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? factor = null,
    Object? icono = null,
    Object? limit_movil = null,
    Object? parentlockcode = null,
    Object? timezone = null,
    Object? token = null,
    Object? urlip = freezed,
    Object? us_id = null,
    Object? useurlip = null,
    Object? usuario = null,
    Object? devid = null,
    Object? enabledvod = freezed,
    Object? vencimientoplan = freezed,
    Object? plan = freezed,
  }) {
    return _then(_User(
      factor: null == factor
          ? _self.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as int,
      icono: null == icono
          ? _self.icono
          : icono // ignore: cast_nullable_to_non_nullable
              as String,
      limit_movil: null == limit_movil
          ? _self.limit_movil
          : limit_movil // ignore: cast_nullable_to_non_nullable
              as String,
      parentlockcode: null == parentlockcode
          ? _self.parentlockcode
          : parentlockcode // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      urlip: freezed == urlip
          ? _self.urlip
          : urlip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      us_id: null == us_id
          ? _self.us_id
          : us_id // ignore: cast_nullable_to_non_nullable
              as String,
      useurlip: null == useurlip
          ? _self.useurlip
          : useurlip // ignore: cast_nullable_to_non_nullable
              as bool,
      usuario: null == usuario
          ? _self.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      devid: null == devid
          ? _self.devid
          : devid // ignore: cast_nullable_to_non_nullable
              as String,
      enabledvod: freezed == enabledvod
          ? _self.enabledvod
          : enabledvod // ignore: cast_nullable_to_non_nullable
              as bool?,
      vencimientoplan: freezed == vencimientoplan
          ? _self.vencimientoplan
          : vencimientoplan // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _self.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
