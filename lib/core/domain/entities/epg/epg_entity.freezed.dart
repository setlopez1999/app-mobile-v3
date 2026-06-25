// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epg_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Epg {
  String get anterior;
  String get desc;
  @StringIntConverter()
  int get fecha_fin;
  @StringIntConverter()
  int get fecha_ini;
  int get run;
  String get siguiente;
  String get titulo;

  /// Create a copy of Epg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EpgCopyWith<Epg> get copyWith =>
      _$EpgCopyWithImpl<Epg>(this as Epg, _$identity);

  /// Serializes this Epg to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Epg &&
            (identical(other.anterior, anterior) ||
                other.anterior == anterior) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.fecha_fin, fecha_fin) ||
                other.fecha_fin == fecha_fin) &&
            (identical(other.fecha_ini, fecha_ini) ||
                other.fecha_ini == fecha_ini) &&
            (identical(other.run, run) || other.run == run) &&
            (identical(other.siguiente, siguiente) ||
                other.siguiente == siguiente) &&
            (identical(other.titulo, titulo) || other.titulo == titulo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, anterior, desc, fecha_fin,
      fecha_ini, run, siguiente, titulo);

  @override
  String toString() {
    return 'Epg(anterior: $anterior, desc: $desc, fecha_fin: $fecha_fin, fecha_ini: $fecha_ini, run: $run, siguiente: $siguiente, titulo: $titulo)';
  }
}

/// @nodoc
abstract mixin class $EpgCopyWith<$Res> {
  factory $EpgCopyWith(Epg value, $Res Function(Epg) _then) = _$EpgCopyWithImpl;
  @useResult
  $Res call(
      {String anterior,
      String desc,
      @StringIntConverter() int fecha_fin,
      @StringIntConverter() int fecha_ini,
      int run,
      String siguiente,
      String titulo});
}

/// @nodoc
class _$EpgCopyWithImpl<$Res> implements $EpgCopyWith<$Res> {
  _$EpgCopyWithImpl(this._self, this._then);

  final Epg _self;
  final $Res Function(Epg) _then;

  /// Create a copy of Epg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anterior = null,
    Object? desc = null,
    Object? fecha_fin = null,
    Object? fecha_ini = null,
    Object? run = null,
    Object? siguiente = null,
    Object? titulo = null,
  }) {
    return _then(_self.copyWith(
      anterior: null == anterior
          ? _self.anterior
          : anterior // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      fecha_fin: null == fecha_fin
          ? _self.fecha_fin
          : fecha_fin // ignore: cast_nullable_to_non_nullable
              as int,
      fecha_ini: null == fecha_ini
          ? _self.fecha_ini
          : fecha_ini // ignore: cast_nullable_to_non_nullable
              as int,
      run: null == run
          ? _self.run
          : run // ignore: cast_nullable_to_non_nullable
              as int,
      siguiente: null == siguiente
          ? _self.siguiente
          : siguiente // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: null == titulo
          ? _self.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Epg].
extension EpgPatterns on Epg {
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
    TResult Function(_Epg value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Epg() when $default != null:
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
    TResult Function(_Epg value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Epg():
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
    TResult? Function(_Epg value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Epg() when $default != null:
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
            String anterior,
            String desc,
            @StringIntConverter() int fecha_fin,
            @StringIntConverter() int fecha_ini,
            int run,
            String siguiente,
            String titulo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Epg() when $default != null:
        return $default(_that.anterior, _that.desc, _that.fecha_fin,
            _that.fecha_ini, _that.run, _that.siguiente, _that.titulo);
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
            String anterior,
            String desc,
            @StringIntConverter() int fecha_fin,
            @StringIntConverter() int fecha_ini,
            int run,
            String siguiente,
            String titulo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Epg():
        return $default(_that.anterior, _that.desc, _that.fecha_fin,
            _that.fecha_ini, _that.run, _that.siguiente, _that.titulo);
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
            String anterior,
            String desc,
            @StringIntConverter() int fecha_fin,
            @StringIntConverter() int fecha_ini,
            int run,
            String siguiente,
            String titulo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Epg() when $default != null:
        return $default(_that.anterior, _that.desc, _that.fecha_fin,
            _that.fecha_ini, _that.run, _that.siguiente, _that.titulo);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Epg implements Epg {
  const _Epg(
      {required this.anterior,
      required this.desc,
      @StringIntConverter() required this.fecha_fin,
      @StringIntConverter() required this.fecha_ini,
      required this.run,
      required this.siguiente,
      required this.titulo});
  factory _Epg.fromJson(Map<String, dynamic> json) => _$EpgFromJson(json);

  @override
  final String anterior;
  @override
  final String desc;
  @override
  @StringIntConverter()
  final int fecha_fin;
  @override
  @StringIntConverter()
  final int fecha_ini;
  @override
  final int run;
  @override
  final String siguiente;
  @override
  final String titulo;

  /// Create a copy of Epg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EpgCopyWith<_Epg> get copyWith =>
      __$EpgCopyWithImpl<_Epg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EpgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Epg &&
            (identical(other.anterior, anterior) ||
                other.anterior == anterior) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.fecha_fin, fecha_fin) ||
                other.fecha_fin == fecha_fin) &&
            (identical(other.fecha_ini, fecha_ini) ||
                other.fecha_ini == fecha_ini) &&
            (identical(other.run, run) || other.run == run) &&
            (identical(other.siguiente, siguiente) ||
                other.siguiente == siguiente) &&
            (identical(other.titulo, titulo) || other.titulo == titulo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, anterior, desc, fecha_fin,
      fecha_ini, run, siguiente, titulo);

  @override
  String toString() {
    return 'Epg(anterior: $anterior, desc: $desc, fecha_fin: $fecha_fin, fecha_ini: $fecha_ini, run: $run, siguiente: $siguiente, titulo: $titulo)';
  }
}

/// @nodoc
abstract mixin class _$EpgCopyWith<$Res> implements $EpgCopyWith<$Res> {
  factory _$EpgCopyWith(_Epg value, $Res Function(_Epg) _then) =
      __$EpgCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String anterior,
      String desc,
      @StringIntConverter() int fecha_fin,
      @StringIntConverter() int fecha_ini,
      int run,
      String siguiente,
      String titulo});
}

/// @nodoc
class __$EpgCopyWithImpl<$Res> implements _$EpgCopyWith<$Res> {
  __$EpgCopyWithImpl(this._self, this._then);

  final _Epg _self;
  final $Res Function(_Epg) _then;

  /// Create a copy of Epg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? anterior = null,
    Object? desc = null,
    Object? fecha_fin = null,
    Object? fecha_ini = null,
    Object? run = null,
    Object? siguiente = null,
    Object? titulo = null,
  }) {
    return _then(_Epg(
      anterior: null == anterior
          ? _self.anterior
          : anterior // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      fecha_fin: null == fecha_fin
          ? _self.fecha_fin
          : fecha_fin // ignore: cast_nullable_to_non_nullable
              as int,
      fecha_ini: null == fecha_ini
          ? _self.fecha_ini
          : fecha_ini // ignore: cast_nullable_to_non_nullable
              as int,
      run: null == run
          ? _self.run
          : run // ignore: cast_nullable_to_non_nullable
              as int,
      siguiente: null == siguiente
          ? _self.siguiente
          : siguiente // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: null == titulo
          ? _self.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
