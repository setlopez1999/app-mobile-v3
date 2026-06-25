// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fibra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Fibra {
  String get potenciaDbm;
  String get estado;

  /// Create a copy of Fibra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FibraCopyWith<Fibra> get copyWith =>
      _$FibraCopyWithImpl<Fibra>(this as Fibra, _$identity);

  /// Serializes this Fibra to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Fibra &&
            (identical(other.potenciaDbm, potenciaDbm) ||
                other.potenciaDbm == potenciaDbm) &&
            (identical(other.estado, estado) || other.estado == estado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, potenciaDbm, estado);

  @override
  String toString() {
    return 'Fibra(potenciaDbm: $potenciaDbm, estado: $estado)';
  }
}

/// @nodoc
abstract mixin class $FibraCopyWith<$Res> {
  factory $FibraCopyWith(Fibra value, $Res Function(Fibra) _then) =
      _$FibraCopyWithImpl;
  @useResult
  $Res call({String potenciaDbm, String estado});
}

/// @nodoc
class _$FibraCopyWithImpl<$Res> implements $FibraCopyWith<$Res> {
  _$FibraCopyWithImpl(this._self, this._then);

  final Fibra _self;
  final $Res Function(Fibra) _then;

  /// Create a copy of Fibra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? potenciaDbm = null,
    Object? estado = null,
  }) {
    return _then(_self.copyWith(
      potenciaDbm: null == potenciaDbm
          ? _self.potenciaDbm
          : potenciaDbm // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _self.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Fibra].
extension FibraPatterns on Fibra {
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
    TResult Function(_Fibra value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fibra() when $default != null:
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
    TResult Function(_Fibra value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fibra():
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
    TResult? Function(_Fibra value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fibra() when $default != null:
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
    TResult Function(String potenciaDbm, String estado)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fibra() when $default != null:
        return $default(_that.potenciaDbm, _that.estado);
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
    TResult Function(String potenciaDbm, String estado) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fibra():
        return $default(_that.potenciaDbm, _that.estado);
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
    TResult? Function(String potenciaDbm, String estado)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fibra() when $default != null:
        return $default(_that.potenciaDbm, _that.estado);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Fibra implements Fibra {
  const _Fibra({required this.potenciaDbm, required this.estado});
  factory _Fibra.fromJson(Map<String, dynamic> json) => _$FibraFromJson(json);

  @override
  final String potenciaDbm;
  @override
  final String estado;

  /// Create a copy of Fibra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FibraCopyWith<_Fibra> get copyWith =>
      __$FibraCopyWithImpl<_Fibra>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FibraToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fibra &&
            (identical(other.potenciaDbm, potenciaDbm) ||
                other.potenciaDbm == potenciaDbm) &&
            (identical(other.estado, estado) || other.estado == estado));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, potenciaDbm, estado);

  @override
  String toString() {
    return 'Fibra(potenciaDbm: $potenciaDbm, estado: $estado)';
  }
}

/// @nodoc
abstract mixin class _$FibraCopyWith<$Res> implements $FibraCopyWith<$Res> {
  factory _$FibraCopyWith(_Fibra value, $Res Function(_Fibra) _then) =
      __$FibraCopyWithImpl;
  @override
  @useResult
  $Res call({String potenciaDbm, String estado});
}

/// @nodoc
class __$FibraCopyWithImpl<$Res> implements _$FibraCopyWith<$Res> {
  __$FibraCopyWithImpl(this._self, this._then);

  final _Fibra _self;
  final $Res Function(_Fibra) _then;

  /// Create a copy of Fibra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? potenciaDbm = null,
    Object? estado = null,
  }) {
    return _then(_Fibra(
      potenciaDbm: null == potenciaDbm
          ? _self.potenciaDbm
          : potenciaDbm // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _self.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
