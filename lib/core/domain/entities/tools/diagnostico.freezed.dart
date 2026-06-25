// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnostico.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Diagnostico {
  String get id;
  DateTime get fecha;
  int get latenciaIspMs;
  double get velocidadBajadaMbps;
  String get resultado;

  /// Create a copy of Diagnostico
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiagnosticoCopyWith<Diagnostico> get copyWith =>
      _$DiagnosticoCopyWithImpl<Diagnostico>(this as Diagnostico, _$identity);

  /// Serializes this Diagnostico to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Diagnostico &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.latenciaIspMs, latenciaIspMs) ||
                other.latenciaIspMs == latenciaIspMs) &&
            (identical(other.velocidadBajadaMbps, velocidadBajadaMbps) ||
                other.velocidadBajadaMbps == velocidadBajadaMbps) &&
            (identical(other.resultado, resultado) ||
                other.resultado == resultado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fecha, latenciaIspMs, velocidadBajadaMbps, resultado);

  @override
  String toString() {
    return 'Diagnostico(id: $id, fecha: $fecha, latenciaIspMs: $latenciaIspMs, velocidadBajadaMbps: $velocidadBajadaMbps, resultado: $resultado)';
  }
}

/// @nodoc
abstract mixin class $DiagnosticoCopyWith<$Res> {
  factory $DiagnosticoCopyWith(
          Diagnostico value, $Res Function(Diagnostico) _then) =
      _$DiagnosticoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DateTime fecha,
      int latenciaIspMs,
      double velocidadBajadaMbps,
      String resultado});
}

/// @nodoc
class _$DiagnosticoCopyWithImpl<$Res> implements $DiagnosticoCopyWith<$Res> {
  _$DiagnosticoCopyWithImpl(this._self, this._then);

  final Diagnostico _self;
  final $Res Function(Diagnostico) _then;

  /// Create a copy of Diagnostico
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? latenciaIspMs = null,
    Object? velocidadBajadaMbps = null,
    Object? resultado = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _self.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latenciaIspMs: null == latenciaIspMs
          ? _self.latenciaIspMs
          : latenciaIspMs // ignore: cast_nullable_to_non_nullable
              as int,
      velocidadBajadaMbps: null == velocidadBajadaMbps
          ? _self.velocidadBajadaMbps
          : velocidadBajadaMbps // ignore: cast_nullable_to_non_nullable
              as double,
      resultado: null == resultado
          ? _self.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Diagnostico].
extension DiagnosticoPatterns on Diagnostico {
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
    TResult Function(_Diagnostico value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Diagnostico() when $default != null:
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
    TResult Function(_Diagnostico value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diagnostico():
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
    TResult? Function(_Diagnostico value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diagnostico() when $default != null:
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
    TResult Function(String id, DateTime fecha, int latenciaIspMs,
            double velocidadBajadaMbps, String resultado)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Diagnostico() when $default != null:
        return $default(_that.id, _that.fecha, _that.latenciaIspMs,
            _that.velocidadBajadaMbps, _that.resultado);
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
    TResult Function(String id, DateTime fecha, int latenciaIspMs,
            double velocidadBajadaMbps, String resultado)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diagnostico():
        return $default(_that.id, _that.fecha, _that.latenciaIspMs,
            _that.velocidadBajadaMbps, _that.resultado);
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
    TResult? Function(String id, DateTime fecha, int latenciaIspMs,
            double velocidadBajadaMbps, String resultado)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diagnostico() when $default != null:
        return $default(_that.id, _that.fecha, _that.latenciaIspMs,
            _that.velocidadBajadaMbps, _that.resultado);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Diagnostico implements Diagnostico {
  const _Diagnostico(
      {required this.id,
      required this.fecha,
      required this.latenciaIspMs,
      required this.velocidadBajadaMbps,
      required this.resultado});
  factory _Diagnostico.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticoFromJson(json);

  @override
  final String id;
  @override
  final DateTime fecha;
  @override
  final int latenciaIspMs;
  @override
  final double velocidadBajadaMbps;
  @override
  final String resultado;

  /// Create a copy of Diagnostico
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiagnosticoCopyWith<_Diagnostico> get copyWith =>
      __$DiagnosticoCopyWithImpl<_Diagnostico>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiagnosticoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Diagnostico &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.latenciaIspMs, latenciaIspMs) ||
                other.latenciaIspMs == latenciaIspMs) &&
            (identical(other.velocidadBajadaMbps, velocidadBajadaMbps) ||
                other.velocidadBajadaMbps == velocidadBajadaMbps) &&
            (identical(other.resultado, resultado) ||
                other.resultado == resultado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fecha, latenciaIspMs, velocidadBajadaMbps, resultado);

  @override
  String toString() {
    return 'Diagnostico(id: $id, fecha: $fecha, latenciaIspMs: $latenciaIspMs, velocidadBajadaMbps: $velocidadBajadaMbps, resultado: $resultado)';
  }
}

/// @nodoc
abstract mixin class _$DiagnosticoCopyWith<$Res>
    implements $DiagnosticoCopyWith<$Res> {
  factory _$DiagnosticoCopyWith(
          _Diagnostico value, $Res Function(_Diagnostico) _then) =
      __$DiagnosticoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime fecha,
      int latenciaIspMs,
      double velocidadBajadaMbps,
      String resultado});
}

/// @nodoc
class __$DiagnosticoCopyWithImpl<$Res> implements _$DiagnosticoCopyWith<$Res> {
  __$DiagnosticoCopyWithImpl(this._self, this._then);

  final _Diagnostico _self;
  final $Res Function(_Diagnostico) _then;

  /// Create a copy of Diagnostico
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? latenciaIspMs = null,
    Object? velocidadBajadaMbps = null,
    Object? resultado = null,
  }) {
    return _then(_Diagnostico(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _self.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latenciaIspMs: null == latenciaIspMs
          ? _self.latenciaIspMs
          : latenciaIspMs // ignore: cast_nullable_to_non_nullable
              as int,
      velocidadBajadaMbps: null == velocidadBajadaMbps
          ? _self.velocidadBajadaMbps
          : velocidadBajadaMbps // ignore: cast_nullable_to_non_nullable
              as double,
      resultado: null == resultado
          ? _self.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DiagnosticoRequest {
  String get clienteId;
  int get latenciaGoogleMs;
  int get latenciaIspMs;
  double get velocidadBajadaMbps;
  double get velocidadSubidaMbps;
  String get fibraPotenciaDbm;
  String get fibraEstado;

  /// Create a copy of DiagnosticoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiagnosticoRequestCopyWith<DiagnosticoRequest> get copyWith =>
      _$DiagnosticoRequestCopyWithImpl<DiagnosticoRequest>(
          this as DiagnosticoRequest, _$identity);

  /// Serializes this DiagnosticoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiagnosticoRequest &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.latenciaGoogleMs, latenciaGoogleMs) ||
                other.latenciaGoogleMs == latenciaGoogleMs) &&
            (identical(other.latenciaIspMs, latenciaIspMs) ||
                other.latenciaIspMs == latenciaIspMs) &&
            (identical(other.velocidadBajadaMbps, velocidadBajadaMbps) ||
                other.velocidadBajadaMbps == velocidadBajadaMbps) &&
            (identical(other.velocidadSubidaMbps, velocidadSubidaMbps) ||
                other.velocidadSubidaMbps == velocidadSubidaMbps) &&
            (identical(other.fibraPotenciaDbm, fibraPotenciaDbm) ||
                other.fibraPotenciaDbm == fibraPotenciaDbm) &&
            (identical(other.fibraEstado, fibraEstado) ||
                other.fibraEstado == fibraEstado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      latenciaGoogleMs,
      latenciaIspMs,
      velocidadBajadaMbps,
      velocidadSubidaMbps,
      fibraPotenciaDbm,
      fibraEstado);

  @override
  String toString() {
    return 'DiagnosticoRequest(clienteId: $clienteId, latenciaGoogleMs: $latenciaGoogleMs, latenciaIspMs: $latenciaIspMs, velocidadBajadaMbps: $velocidadBajadaMbps, velocidadSubidaMbps: $velocidadSubidaMbps, fibraPotenciaDbm: $fibraPotenciaDbm, fibraEstado: $fibraEstado)';
  }
}

/// @nodoc
abstract mixin class $DiagnosticoRequestCopyWith<$Res> {
  factory $DiagnosticoRequestCopyWith(
          DiagnosticoRequest value, $Res Function(DiagnosticoRequest) _then) =
      _$DiagnosticoRequestCopyWithImpl;
  @useResult
  $Res call(
      {String clienteId,
      int latenciaGoogleMs,
      int latenciaIspMs,
      double velocidadBajadaMbps,
      double velocidadSubidaMbps,
      String fibraPotenciaDbm,
      String fibraEstado});
}

/// @nodoc
class _$DiagnosticoRequestCopyWithImpl<$Res>
    implements $DiagnosticoRequestCopyWith<$Res> {
  _$DiagnosticoRequestCopyWithImpl(this._self, this._then);

  final DiagnosticoRequest _self;
  final $Res Function(DiagnosticoRequest) _then;

  /// Create a copy of DiagnosticoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? latenciaGoogleMs = null,
    Object? latenciaIspMs = null,
    Object? velocidadBajadaMbps = null,
    Object? velocidadSubidaMbps = null,
    Object? fibraPotenciaDbm = null,
    Object? fibraEstado = null,
  }) {
    return _then(_self.copyWith(
      clienteId: null == clienteId
          ? _self.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      latenciaGoogleMs: null == latenciaGoogleMs
          ? _self.latenciaGoogleMs
          : latenciaGoogleMs // ignore: cast_nullable_to_non_nullable
              as int,
      latenciaIspMs: null == latenciaIspMs
          ? _self.latenciaIspMs
          : latenciaIspMs // ignore: cast_nullable_to_non_nullable
              as int,
      velocidadBajadaMbps: null == velocidadBajadaMbps
          ? _self.velocidadBajadaMbps
          : velocidadBajadaMbps // ignore: cast_nullable_to_non_nullable
              as double,
      velocidadSubidaMbps: null == velocidadSubidaMbps
          ? _self.velocidadSubidaMbps
          : velocidadSubidaMbps // ignore: cast_nullable_to_non_nullable
              as double,
      fibraPotenciaDbm: null == fibraPotenciaDbm
          ? _self.fibraPotenciaDbm
          : fibraPotenciaDbm // ignore: cast_nullable_to_non_nullable
              as String,
      fibraEstado: null == fibraEstado
          ? _self.fibraEstado
          : fibraEstado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiagnosticoRequest].
extension DiagnosticoRequestPatterns on DiagnosticoRequest {
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
    TResult Function(_DiagnosticoRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoRequest() when $default != null:
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
    TResult Function(_DiagnosticoRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoRequest():
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
    TResult? Function(_DiagnosticoRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoRequest() when $default != null:
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
            String clienteId,
            int latenciaGoogleMs,
            int latenciaIspMs,
            double velocidadBajadaMbps,
            double velocidadSubidaMbps,
            String fibraPotenciaDbm,
            String fibraEstado)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoRequest() when $default != null:
        return $default(
            _that.clienteId,
            _that.latenciaGoogleMs,
            _that.latenciaIspMs,
            _that.velocidadBajadaMbps,
            _that.velocidadSubidaMbps,
            _that.fibraPotenciaDbm,
            _that.fibraEstado);
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
            String clienteId,
            int latenciaGoogleMs,
            int latenciaIspMs,
            double velocidadBajadaMbps,
            double velocidadSubidaMbps,
            String fibraPotenciaDbm,
            String fibraEstado)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoRequest():
        return $default(
            _that.clienteId,
            _that.latenciaGoogleMs,
            _that.latenciaIspMs,
            _that.velocidadBajadaMbps,
            _that.velocidadSubidaMbps,
            _that.fibraPotenciaDbm,
            _that.fibraEstado);
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
            String clienteId,
            int latenciaGoogleMs,
            int latenciaIspMs,
            double velocidadBajadaMbps,
            double velocidadSubidaMbps,
            String fibraPotenciaDbm,
            String fibraEstado)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoRequest() when $default != null:
        return $default(
            _that.clienteId,
            _that.latenciaGoogleMs,
            _that.latenciaIspMs,
            _that.velocidadBajadaMbps,
            _that.velocidadSubidaMbps,
            _that.fibraPotenciaDbm,
            _that.fibraEstado);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiagnosticoRequest implements DiagnosticoRequest {
  const _DiagnosticoRequest(
      {required this.clienteId,
      required this.latenciaGoogleMs,
      required this.latenciaIspMs,
      required this.velocidadBajadaMbps,
      required this.velocidadSubidaMbps,
      required this.fibraPotenciaDbm,
      required this.fibraEstado});
  factory _DiagnosticoRequest.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticoRequestFromJson(json);

  @override
  final String clienteId;
  @override
  final int latenciaGoogleMs;
  @override
  final int latenciaIspMs;
  @override
  final double velocidadBajadaMbps;
  @override
  final double velocidadSubidaMbps;
  @override
  final String fibraPotenciaDbm;
  @override
  final String fibraEstado;

  /// Create a copy of DiagnosticoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiagnosticoRequestCopyWith<_DiagnosticoRequest> get copyWith =>
      __$DiagnosticoRequestCopyWithImpl<_DiagnosticoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiagnosticoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiagnosticoRequest &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.latenciaGoogleMs, latenciaGoogleMs) ||
                other.latenciaGoogleMs == latenciaGoogleMs) &&
            (identical(other.latenciaIspMs, latenciaIspMs) ||
                other.latenciaIspMs == latenciaIspMs) &&
            (identical(other.velocidadBajadaMbps, velocidadBajadaMbps) ||
                other.velocidadBajadaMbps == velocidadBajadaMbps) &&
            (identical(other.velocidadSubidaMbps, velocidadSubidaMbps) ||
                other.velocidadSubidaMbps == velocidadSubidaMbps) &&
            (identical(other.fibraPotenciaDbm, fibraPotenciaDbm) ||
                other.fibraPotenciaDbm == fibraPotenciaDbm) &&
            (identical(other.fibraEstado, fibraEstado) ||
                other.fibraEstado == fibraEstado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      latenciaGoogleMs,
      latenciaIspMs,
      velocidadBajadaMbps,
      velocidadSubidaMbps,
      fibraPotenciaDbm,
      fibraEstado);

  @override
  String toString() {
    return 'DiagnosticoRequest(clienteId: $clienteId, latenciaGoogleMs: $latenciaGoogleMs, latenciaIspMs: $latenciaIspMs, velocidadBajadaMbps: $velocidadBajadaMbps, velocidadSubidaMbps: $velocidadSubidaMbps, fibraPotenciaDbm: $fibraPotenciaDbm, fibraEstado: $fibraEstado)';
  }
}

/// @nodoc
abstract mixin class _$DiagnosticoRequestCopyWith<$Res>
    implements $DiagnosticoRequestCopyWith<$Res> {
  factory _$DiagnosticoRequestCopyWith(
          _DiagnosticoRequest value, $Res Function(_DiagnosticoRequest) _then) =
      __$DiagnosticoRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clienteId,
      int latenciaGoogleMs,
      int latenciaIspMs,
      double velocidadBajadaMbps,
      double velocidadSubidaMbps,
      String fibraPotenciaDbm,
      String fibraEstado});
}

/// @nodoc
class __$DiagnosticoRequestCopyWithImpl<$Res>
    implements _$DiagnosticoRequestCopyWith<$Res> {
  __$DiagnosticoRequestCopyWithImpl(this._self, this._then);

  final _DiagnosticoRequest _self;
  final $Res Function(_DiagnosticoRequest) _then;

  /// Create a copy of DiagnosticoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clienteId = null,
    Object? latenciaGoogleMs = null,
    Object? latenciaIspMs = null,
    Object? velocidadBajadaMbps = null,
    Object? velocidadSubidaMbps = null,
    Object? fibraPotenciaDbm = null,
    Object? fibraEstado = null,
  }) {
    return _then(_DiagnosticoRequest(
      clienteId: null == clienteId
          ? _self.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      latenciaGoogleMs: null == latenciaGoogleMs
          ? _self.latenciaGoogleMs
          : latenciaGoogleMs // ignore: cast_nullable_to_non_nullable
              as int,
      latenciaIspMs: null == latenciaIspMs
          ? _self.latenciaIspMs
          : latenciaIspMs // ignore: cast_nullable_to_non_nullable
              as int,
      velocidadBajadaMbps: null == velocidadBajadaMbps
          ? _self.velocidadBajadaMbps
          : velocidadBajadaMbps // ignore: cast_nullable_to_non_nullable
              as double,
      velocidadSubidaMbps: null == velocidadSubidaMbps
          ? _self.velocidadSubidaMbps
          : velocidadSubidaMbps // ignore: cast_nullable_to_non_nullable
              as double,
      fibraPotenciaDbm: null == fibraPotenciaDbm
          ? _self.fibraPotenciaDbm
          : fibraPotenciaDbm // ignore: cast_nullable_to_non_nullable
              as String,
      fibraEstado: null == fibraEstado
          ? _self.fibraEstado
          : fibraEstado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DiagnosticoSaveResult {
  bool get success;
  String get diagnosticoId;
  String get resultado;

  /// Create a copy of DiagnosticoSaveResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiagnosticoSaveResultCopyWith<DiagnosticoSaveResult> get copyWith =>
      _$DiagnosticoSaveResultCopyWithImpl<DiagnosticoSaveResult>(
          this as DiagnosticoSaveResult, _$identity);

  /// Serializes this DiagnosticoSaveResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiagnosticoSaveResult &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.diagnosticoId, diagnosticoId) ||
                other.diagnosticoId == diagnosticoId) &&
            (identical(other.resultado, resultado) ||
                other.resultado == resultado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, diagnosticoId, resultado);

  @override
  String toString() {
    return 'DiagnosticoSaveResult(success: $success, diagnosticoId: $diagnosticoId, resultado: $resultado)';
  }
}

/// @nodoc
abstract mixin class $DiagnosticoSaveResultCopyWith<$Res> {
  factory $DiagnosticoSaveResultCopyWith(DiagnosticoSaveResult value,
          $Res Function(DiagnosticoSaveResult) _then) =
      _$DiagnosticoSaveResultCopyWithImpl;
  @useResult
  $Res call({bool success, String diagnosticoId, String resultado});
}

/// @nodoc
class _$DiagnosticoSaveResultCopyWithImpl<$Res>
    implements $DiagnosticoSaveResultCopyWith<$Res> {
  _$DiagnosticoSaveResultCopyWithImpl(this._self, this._then);

  final DiagnosticoSaveResult _self;
  final $Res Function(DiagnosticoSaveResult) _then;

  /// Create a copy of DiagnosticoSaveResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? diagnosticoId = null,
    Object? resultado = null,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      diagnosticoId: null == diagnosticoId
          ? _self.diagnosticoId
          : diagnosticoId // ignore: cast_nullable_to_non_nullable
              as String,
      resultado: null == resultado
          ? _self.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiagnosticoSaveResult].
extension DiagnosticoSaveResultPatterns on DiagnosticoSaveResult {
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
    TResult Function(_DiagnosticoSaveResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoSaveResult() when $default != null:
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
    TResult Function(_DiagnosticoSaveResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoSaveResult():
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
    TResult? Function(_DiagnosticoSaveResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoSaveResult() when $default != null:
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
    TResult Function(bool success, String diagnosticoId, String resultado)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoSaveResult() when $default != null:
        return $default(_that.success, _that.diagnosticoId, _that.resultado);
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
    TResult Function(bool success, String diagnosticoId, String resultado)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoSaveResult():
        return $default(_that.success, _that.diagnosticoId, _that.resultado);
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
    TResult? Function(bool success, String diagnosticoId, String resultado)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiagnosticoSaveResult() when $default != null:
        return $default(_that.success, _that.diagnosticoId, _that.resultado);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiagnosticoSaveResult implements DiagnosticoSaveResult {
  const _DiagnosticoSaveResult(
      {required this.success,
      required this.diagnosticoId,
      required this.resultado});
  factory _DiagnosticoSaveResult.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticoSaveResultFromJson(json);

  @override
  final bool success;
  @override
  final String diagnosticoId;
  @override
  final String resultado;

  /// Create a copy of DiagnosticoSaveResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiagnosticoSaveResultCopyWith<_DiagnosticoSaveResult> get copyWith =>
      __$DiagnosticoSaveResultCopyWithImpl<_DiagnosticoSaveResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiagnosticoSaveResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiagnosticoSaveResult &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.diagnosticoId, diagnosticoId) ||
                other.diagnosticoId == diagnosticoId) &&
            (identical(other.resultado, resultado) ||
                other.resultado == resultado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, diagnosticoId, resultado);

  @override
  String toString() {
    return 'DiagnosticoSaveResult(success: $success, diagnosticoId: $diagnosticoId, resultado: $resultado)';
  }
}

/// @nodoc
abstract mixin class _$DiagnosticoSaveResultCopyWith<$Res>
    implements $DiagnosticoSaveResultCopyWith<$Res> {
  factory _$DiagnosticoSaveResultCopyWith(_DiagnosticoSaveResult value,
          $Res Function(_DiagnosticoSaveResult) _then) =
      __$DiagnosticoSaveResultCopyWithImpl;
  @override
  @useResult
  $Res call({bool success, String diagnosticoId, String resultado});
}

/// @nodoc
class __$DiagnosticoSaveResultCopyWithImpl<$Res>
    implements _$DiagnosticoSaveResultCopyWith<$Res> {
  __$DiagnosticoSaveResultCopyWithImpl(this._self, this._then);

  final _DiagnosticoSaveResult _self;
  final $Res Function(_DiagnosticoSaveResult) _then;

  /// Create a copy of DiagnosticoSaveResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? diagnosticoId = null,
    Object? resultado = null,
  }) {
    return _then(_DiagnosticoSaveResult(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      diagnosticoId: null == diagnosticoId
          ? _self.diagnosticoId
          : diagnosticoId // ignore: cast_nullable_to_non_nullable
              as String,
      resultado: null == resultado
          ? _self.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
