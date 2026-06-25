// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'servidor_juego.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServidorJuego {
  String get id;
  String get juego;
  String get servidor;
  String get ubicacion;
  int get pingMs;
  int get jitterMs;
  double get perdidaPaquetesPct;
  String get estado;

  /// Create a copy of ServidorJuego
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServidorJuegoCopyWith<ServidorJuego> get copyWith =>
      _$ServidorJuegoCopyWithImpl<ServidorJuego>(
          this as ServidorJuego, _$identity);

  /// Serializes this ServidorJuego to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServidorJuego &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.juego, juego) || other.juego == juego) &&
            (identical(other.servidor, servidor) ||
                other.servidor == servidor) &&
            (identical(other.ubicacion, ubicacion) ||
                other.ubicacion == ubicacion) &&
            (identical(other.pingMs, pingMs) || other.pingMs == pingMs) &&
            (identical(other.jitterMs, jitterMs) ||
                other.jitterMs == jitterMs) &&
            (identical(other.perdidaPaquetesPct, perdidaPaquetesPct) ||
                other.perdidaPaquetesPct == perdidaPaquetesPct) &&
            (identical(other.estado, estado) || other.estado == estado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, juego, servidor, ubicacion,
      pingMs, jitterMs, perdidaPaquetesPct, estado);

  @override
  String toString() {
    return 'ServidorJuego(id: $id, juego: $juego, servidor: $servidor, ubicacion: $ubicacion, pingMs: $pingMs, jitterMs: $jitterMs, perdidaPaquetesPct: $perdidaPaquetesPct, estado: $estado)';
  }
}

/// @nodoc
abstract mixin class $ServidorJuegoCopyWith<$Res> {
  factory $ServidorJuegoCopyWith(
          ServidorJuego value, $Res Function(ServidorJuego) _then) =
      _$ServidorJuegoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String juego,
      String servidor,
      String ubicacion,
      int pingMs,
      int jitterMs,
      double perdidaPaquetesPct,
      String estado});
}

/// @nodoc
class _$ServidorJuegoCopyWithImpl<$Res>
    implements $ServidorJuegoCopyWith<$Res> {
  _$ServidorJuegoCopyWithImpl(this._self, this._then);

  final ServidorJuego _self;
  final $Res Function(ServidorJuego) _then;

  /// Create a copy of ServidorJuego
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? juego = null,
    Object? servidor = null,
    Object? ubicacion = null,
    Object? pingMs = null,
    Object? jitterMs = null,
    Object? perdidaPaquetesPct = null,
    Object? estado = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      juego: null == juego
          ? _self.juego
          : juego // ignore: cast_nullable_to_non_nullable
              as String,
      servidor: null == servidor
          ? _self.servidor
          : servidor // ignore: cast_nullable_to_non_nullable
              as String,
      ubicacion: null == ubicacion
          ? _self.ubicacion
          : ubicacion // ignore: cast_nullable_to_non_nullable
              as String,
      pingMs: null == pingMs
          ? _self.pingMs
          : pingMs // ignore: cast_nullable_to_non_nullable
              as int,
      jitterMs: null == jitterMs
          ? _self.jitterMs
          : jitterMs // ignore: cast_nullable_to_non_nullable
              as int,
      perdidaPaquetesPct: null == perdidaPaquetesPct
          ? _self.perdidaPaquetesPct
          : perdidaPaquetesPct // ignore: cast_nullable_to_non_nullable
              as double,
      estado: null == estado
          ? _self.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ServidorJuego].
extension ServidorJuegoPatterns on ServidorJuego {
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
    TResult Function(_ServidorJuego value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServidorJuego() when $default != null:
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
    TResult Function(_ServidorJuego value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServidorJuego():
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
    TResult? Function(_ServidorJuego value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServidorJuego() when $default != null:
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
    TResult Function(String id, String juego, String servidor, String ubicacion,
            int pingMs, int jitterMs, double perdidaPaquetesPct, String estado)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServidorJuego() when $default != null:
        return $default(
            _that.id,
            _that.juego,
            _that.servidor,
            _that.ubicacion,
            _that.pingMs,
            _that.jitterMs,
            _that.perdidaPaquetesPct,
            _that.estado);
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
    TResult Function(String id, String juego, String servidor, String ubicacion,
            int pingMs, int jitterMs, double perdidaPaquetesPct, String estado)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServidorJuego():
        return $default(
            _that.id,
            _that.juego,
            _that.servidor,
            _that.ubicacion,
            _that.pingMs,
            _that.jitterMs,
            _that.perdidaPaquetesPct,
            _that.estado);
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
            String id,
            String juego,
            String servidor,
            String ubicacion,
            int pingMs,
            int jitterMs,
            double perdidaPaquetesPct,
            String estado)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServidorJuego() when $default != null:
        return $default(
            _that.id,
            _that.juego,
            _that.servidor,
            _that.ubicacion,
            _that.pingMs,
            _that.jitterMs,
            _that.perdidaPaquetesPct,
            _that.estado);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ServidorJuego implements ServidorJuego {
  const _ServidorJuego(
      {required this.id,
      required this.juego,
      required this.servidor,
      required this.ubicacion,
      required this.pingMs,
      required this.jitterMs,
      required this.perdidaPaquetesPct,
      required this.estado});
  factory _ServidorJuego.fromJson(Map<String, dynamic> json) =>
      _$ServidorJuegoFromJson(json);

  @override
  final String id;
  @override
  final String juego;
  @override
  final String servidor;
  @override
  final String ubicacion;
  @override
  final int pingMs;
  @override
  final int jitterMs;
  @override
  final double perdidaPaquetesPct;
  @override
  final String estado;

  /// Create a copy of ServidorJuego
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServidorJuegoCopyWith<_ServidorJuego> get copyWith =>
      __$ServidorJuegoCopyWithImpl<_ServidorJuego>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServidorJuegoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServidorJuego &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.juego, juego) || other.juego == juego) &&
            (identical(other.servidor, servidor) ||
                other.servidor == servidor) &&
            (identical(other.ubicacion, ubicacion) ||
                other.ubicacion == ubicacion) &&
            (identical(other.pingMs, pingMs) || other.pingMs == pingMs) &&
            (identical(other.jitterMs, jitterMs) ||
                other.jitterMs == jitterMs) &&
            (identical(other.perdidaPaquetesPct, perdidaPaquetesPct) ||
                other.perdidaPaquetesPct == perdidaPaquetesPct) &&
            (identical(other.estado, estado) || other.estado == estado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, juego, servidor, ubicacion,
      pingMs, jitterMs, perdidaPaquetesPct, estado);

  @override
  String toString() {
    return 'ServidorJuego(id: $id, juego: $juego, servidor: $servidor, ubicacion: $ubicacion, pingMs: $pingMs, jitterMs: $jitterMs, perdidaPaquetesPct: $perdidaPaquetesPct, estado: $estado)';
  }
}

/// @nodoc
abstract mixin class _$ServidorJuegoCopyWith<$Res>
    implements $ServidorJuegoCopyWith<$Res> {
  factory _$ServidorJuegoCopyWith(
          _ServidorJuego value, $Res Function(_ServidorJuego) _then) =
      __$ServidorJuegoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String juego,
      String servidor,
      String ubicacion,
      int pingMs,
      int jitterMs,
      double perdidaPaquetesPct,
      String estado});
}

/// @nodoc
class __$ServidorJuegoCopyWithImpl<$Res>
    implements _$ServidorJuegoCopyWith<$Res> {
  __$ServidorJuegoCopyWithImpl(this._self, this._then);

  final _ServidorJuego _self;
  final $Res Function(_ServidorJuego) _then;

  /// Create a copy of ServidorJuego
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? juego = null,
    Object? servidor = null,
    Object? ubicacion = null,
    Object? pingMs = null,
    Object? jitterMs = null,
    Object? perdidaPaquetesPct = null,
    Object? estado = null,
  }) {
    return _then(_ServidorJuego(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      juego: null == juego
          ? _self.juego
          : juego // ignore: cast_nullable_to_non_nullable
              as String,
      servidor: null == servidor
          ? _self.servidor
          : servidor // ignore: cast_nullable_to_non_nullable
              as String,
      ubicacion: null == ubicacion
          ? _self.ubicacion
          : ubicacion // ignore: cast_nullable_to_non_nullable
              as String,
      pingMs: null == pingMs
          ? _self.pingMs
          : pingMs // ignore: cast_nullable_to_non_nullable
              as int,
      jitterMs: null == jitterMs
          ? _self.jitterMs
          : jitterMs // ignore: cast_nullable_to_non_nullable
              as int,
      perdidaPaquetesPct: null == perdidaPaquetesPct
          ? _self.perdidaPaquetesPct
          : perdidaPaquetesPct // ignore: cast_nullable_to_non_nullable
              as double,
      estado: null == estado
          ? _self.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
