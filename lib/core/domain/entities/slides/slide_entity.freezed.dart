// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Slide {
  String get imagen;

  /// Create a copy of Slide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SlideCopyWith<Slide> get copyWith =>
      _$SlideCopyWithImpl<Slide>(this as Slide, _$identity);

  /// Serializes this Slide to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Slide &&
            (identical(other.imagen, imagen) || other.imagen == imagen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagen);

  @override
  String toString() {
    return 'Slide(imagen: $imagen)';
  }
}

/// @nodoc
abstract mixin class $SlideCopyWith<$Res> {
  factory $SlideCopyWith(Slide value, $Res Function(Slide) _then) =
      _$SlideCopyWithImpl;
  @useResult
  $Res call({String imagen});
}

/// @nodoc
class _$SlideCopyWithImpl<$Res> implements $SlideCopyWith<$Res> {
  _$SlideCopyWithImpl(this._self, this._then);

  final Slide _self;
  final $Res Function(Slide) _then;

  /// Create a copy of Slide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagen = null,
  }) {
    return _then(_self.copyWith(
      imagen: null == imagen
          ? _self.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Slide].
extension SlidePatterns on Slide {
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
    TResult Function(_Slide value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Slide() when $default != null:
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
    TResult Function(_Slide value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Slide():
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
    TResult? Function(_Slide value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Slide() when $default != null:
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
    TResult Function(String imagen)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Slide() when $default != null:
        return $default(_that.imagen);
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
    TResult Function(String imagen) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Slide():
        return $default(_that.imagen);
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
    TResult? Function(String imagen)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Slide() when $default != null:
        return $default(_that.imagen);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Slide extends Slide {
  const _Slide({required this.imagen}) : super._();
  factory _Slide.fromJson(Map<String, dynamic> json) => _$SlideFromJson(json);

  @override
  final String imagen;

  /// Create a copy of Slide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SlideCopyWith<_Slide> get copyWith =>
      __$SlideCopyWithImpl<_Slide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SlideToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Slide &&
            (identical(other.imagen, imagen) || other.imagen == imagen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagen);

  @override
  String toString() {
    return 'Slide(imagen: $imagen)';
  }
}

/// @nodoc
abstract mixin class _$SlideCopyWith<$Res> implements $SlideCopyWith<$Res> {
  factory _$SlideCopyWith(_Slide value, $Res Function(_Slide) _then) =
      __$SlideCopyWithImpl;
  @override
  @useResult
  $Res call({String imagen});
}

/// @nodoc
class __$SlideCopyWithImpl<$Res> implements _$SlideCopyWith<$Res> {
  __$SlideCopyWithImpl(this._self, this._then);

  final _Slide _self;
  final $Res Function(_Slide) _then;

  /// Create a copy of Slide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imagen = null,
  }) {
    return _then(_Slide(
      imagen: null == imagen
          ? _self.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
