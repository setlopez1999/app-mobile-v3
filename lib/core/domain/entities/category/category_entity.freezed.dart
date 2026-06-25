// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category implements DiagnosticableTreeMixin {
  int get adulto;
  String get background;
  String get card;
  int get especial;
  String get id;
  String get name;
  int get ott;
  String get predefinido;
  int get vod;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<Category> get copyWith =>
      _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Category'))
      ..add(DiagnosticsProperty('adulto', adulto))
      ..add(DiagnosticsProperty('background', background))
      ..add(DiagnosticsProperty('card', card))
      ..add(DiagnosticsProperty('especial', especial))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('ott', ott))
      ..add(DiagnosticsProperty('predefinido', predefinido))
      ..add(DiagnosticsProperty('vod', vod));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Category &&
            (identical(other.adulto, adulto) || other.adulto == adulto) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.especial, especial) ||
                other.especial == especial) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ott, ott) || other.ott == ott) &&
            (identical(other.predefinido, predefinido) ||
                other.predefinido == predefinido) &&
            (identical(other.vod, vod) || other.vod == vod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adulto, background, card,
      especial, id, name, ott, predefinido, vod);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Category(adulto: $adulto, background: $background, card: $card, especial: $especial, id: $id, name: $name, ott: $ott, predefinido: $predefinido, vod: $vod)';
  }
}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) =
      _$CategoryCopyWithImpl;
  @useResult
  $Res call(
      {int adulto,
      String background,
      String card,
      int especial,
      String id,
      String name,
      int ott,
      String predefinido,
      int vod});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adulto = null,
    Object? background = null,
    Object? card = null,
    Object? especial = null,
    Object? id = null,
    Object? name = null,
    Object? ott = null,
    Object? predefinido = null,
    Object? vod = null,
  }) {
    return _then(_self.copyWith(
      adulto: null == adulto
          ? _self.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as int,
      background: null == background
          ? _self.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _self.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      especial: null == especial
          ? _self.especial
          : especial // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ott: null == ott
          ? _self.ott
          : ott // ignore: cast_nullable_to_non_nullable
              as int,
      predefinido: null == predefinido
          ? _self.predefinido
          : predefinido // ignore: cast_nullable_to_non_nullable
              as String,
      vod: null == vod
          ? _self.vod
          : vod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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
    TResult Function(_Category value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
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
    TResult Function(_Category value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
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
    TResult? Function(_Category value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
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
    TResult Function(int adulto, String background, String card, int especial,
            String id, String name, int ott, String predefinido, int vod)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(
            _that.adulto,
            _that.background,
            _that.card,
            _that.especial,
            _that.id,
            _that.name,
            _that.ott,
            _that.predefinido,
            _that.vod);
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
    TResult Function(int adulto, String background, String card, int especial,
            String id, String name, int ott, String predefinido, int vod)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(
            _that.adulto,
            _that.background,
            _that.card,
            _that.especial,
            _that.id,
            _that.name,
            _that.ott,
            _that.predefinido,
            _that.vod);
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
    TResult? Function(int adulto, String background, String card, int especial,
            String id, String name, int ott, String predefinido, int vod)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(
            _that.adulto,
            _that.background,
            _that.card,
            _that.especial,
            _that.id,
            _that.name,
            _that.ott,
            _that.predefinido,
            _that.vod);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Category with DiagnosticableTreeMixin implements Category {
  const _Category(
      {this.adulto = 0,
      required this.background,
      required this.card,
      required this.especial,
      required this.id,
      required this.name,
      required this.ott,
      required this.predefinido,
      this.vod = 0});
  factory _Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @override
  @JsonKey()
  final int adulto;
  @override
  final String background;
  @override
  final String card;
  @override
  final int especial;
  @override
  final String id;
  @override
  final String name;
  @override
  final int ott;
  @override
  final String predefinido;
  @override
  @JsonKey()
  final int vod;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Category'))
      ..add(DiagnosticsProperty('adulto', adulto))
      ..add(DiagnosticsProperty('background', background))
      ..add(DiagnosticsProperty('card', card))
      ..add(DiagnosticsProperty('especial', especial))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('ott', ott))
      ..add(DiagnosticsProperty('predefinido', predefinido))
      ..add(DiagnosticsProperty('vod', vod));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            (identical(other.adulto, adulto) || other.adulto == adulto) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.especial, especial) ||
                other.especial == especial) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ott, ott) || other.ott == ott) &&
            (identical(other.predefinido, predefinido) ||
                other.predefinido == predefinido) &&
            (identical(other.vod, vod) || other.vod == vod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adulto, background, card,
      especial, id, name, ott, predefinido, vod);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Category(adulto: $adulto, background: $background, card: $card, especial: $especial, id: $id, name: $name, ott: $ott, predefinido: $predefinido, vod: $vod)';
  }
}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) =
      __$CategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int adulto,
      String background,
      String card,
      int especial,
      String id,
      String name,
      int ott,
      String predefinido,
      int vod});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adulto = null,
    Object? background = null,
    Object? card = null,
    Object? especial = null,
    Object? id = null,
    Object? name = null,
    Object? ott = null,
    Object? predefinido = null,
    Object? vod = null,
  }) {
    return _then(_Category(
      adulto: null == adulto
          ? _self.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as int,
      background: null == background
          ? _self.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _self.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      especial: null == especial
          ? _self.especial
          : especial // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ott: null == ott
          ? _self.ott
          : ott // ignore: cast_nullable_to_non_nullable
              as int,
      predefinido: null == predefinido
          ? _self.predefinido
          : predefinido // ignore: cast_nullable_to_non_nullable
              as String,
      vod: null == vod
          ? _self.vod
          : vod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
