// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispositivo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dispositivo {
  String get id;
  String get nombre;
  String get mac;
  String get ipLocal;
  String get tipo;
  bool get conectado;

  /// Create a copy of Dispositivo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DispositivoCopyWith<Dispositivo> get copyWith =>
      _$DispositivoCopyWithImpl<Dispositivo>(this as Dispositivo, _$identity);

  /// Serializes this Dispositivo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Dispositivo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.ipLocal, ipLocal) || other.ipLocal == ipLocal) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.conectado, conectado) ||
                other.conectado == conectado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nombre, mac, ipLocal, tipo, conectado);

  @override
  String toString() {
    return 'Dispositivo(id: $id, nombre: $nombre, mac: $mac, ipLocal: $ipLocal, tipo: $tipo, conectado: $conectado)';
  }
}

/// @nodoc
abstract mixin class $DispositivoCopyWith<$Res> {
  factory $DispositivoCopyWith(
          Dispositivo value, $Res Function(Dispositivo) _then) =
      _$DispositivoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String nombre,
      String mac,
      String ipLocal,
      String tipo,
      bool conectado});
}

/// @nodoc
class _$DispositivoCopyWithImpl<$Res> implements $DispositivoCopyWith<$Res> {
  _$DispositivoCopyWithImpl(this._self, this._then);

  final Dispositivo _self;
  final $Res Function(Dispositivo) _then;

  /// Create a copy of Dispositivo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? mac = null,
    Object? ipLocal = null,
    Object? tipo = null,
    Object? conectado = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _self.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      mac: null == mac
          ? _self.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String,
      ipLocal: null == ipLocal
          ? _self.ipLocal
          : ipLocal // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _self.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      conectado: null == conectado
          ? _self.conectado
          : conectado // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [Dispositivo].
extension DispositivoPatterns on Dispositivo {
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
    TResult Function(_Dispositivo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dispositivo() when $default != null:
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
    TResult Function(_Dispositivo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dispositivo():
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
    TResult? Function(_Dispositivo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dispositivo() when $default != null:
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
    TResult Function(String id, String nombre, String mac, String ipLocal,
            String tipo, bool conectado)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dispositivo() when $default != null:
        return $default(_that.id, _that.nombre, _that.mac, _that.ipLocal,
            _that.tipo, _that.conectado);
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
    TResult Function(String id, String nombre, String mac, String ipLocal,
            String tipo, bool conectado)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dispositivo():
        return $default(_that.id, _that.nombre, _that.mac, _that.ipLocal,
            _that.tipo, _that.conectado);
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
    TResult? Function(String id, String nombre, String mac, String ipLocal,
            String tipo, bool conectado)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dispositivo() when $default != null:
        return $default(_that.id, _that.nombre, _that.mac, _that.ipLocal,
            _that.tipo, _that.conectado);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Dispositivo implements Dispositivo {
  const _Dispositivo(
      {required this.id,
      required this.nombre,
      required this.mac,
      required this.ipLocal,
      required this.tipo,
      required this.conectado});
  factory _Dispositivo.fromJson(Map<String, dynamic> json) =>
      _$DispositivoFromJson(json);

  @override
  final String id;
  @override
  final String nombre;
  @override
  final String mac;
  @override
  final String ipLocal;
  @override
  final String tipo;
  @override
  final bool conectado;

  /// Create a copy of Dispositivo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DispositivoCopyWith<_Dispositivo> get copyWith =>
      __$DispositivoCopyWithImpl<_Dispositivo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DispositivoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dispositivo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.ipLocal, ipLocal) || other.ipLocal == ipLocal) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.conectado, conectado) ||
                other.conectado == conectado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nombre, mac, ipLocal, tipo, conectado);

  @override
  String toString() {
    return 'Dispositivo(id: $id, nombre: $nombre, mac: $mac, ipLocal: $ipLocal, tipo: $tipo, conectado: $conectado)';
  }
}

/// @nodoc
abstract mixin class _$DispositivoCopyWith<$Res>
    implements $DispositivoCopyWith<$Res> {
  factory _$DispositivoCopyWith(
          _Dispositivo value, $Res Function(_Dispositivo) _then) =
      __$DispositivoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String nombre,
      String mac,
      String ipLocal,
      String tipo,
      bool conectado});
}

/// @nodoc
class __$DispositivoCopyWithImpl<$Res> implements _$DispositivoCopyWith<$Res> {
  __$DispositivoCopyWithImpl(this._self, this._then);

  final _Dispositivo _self;
  final $Res Function(_Dispositivo) _then;

  /// Create a copy of Dispositivo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? mac = null,
    Object? ipLocal = null,
    Object? tipo = null,
    Object? conectado = null,
  }) {
    return _then(_Dispositivo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _self.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      mac: null == mac
          ? _self.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String,
      ipLocal: null == ipLocal
          ? _self.ipLocal
          : ipLocal // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _self.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      conectado: null == conectado
          ? _self.conectado
          : conectado // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
