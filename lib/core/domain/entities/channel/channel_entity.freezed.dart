// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Channel {
  int get adulto;
  int get category_id;
  String get card;
  String get description;
  int get number;
  int get premium;
  int get restriccion;
  int get seccion_id;
  int get studio;
  String get title;
  List<Epg>? get epg;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChannelCopyWith<Channel> get copyWith =>
      _$ChannelCopyWithImpl<Channel>(this as Channel, _$identity);

  /// Serializes this Channel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Channel &&
            (identical(other.adulto, adulto) || other.adulto == adulto) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.restriccion, restriccion) ||
                other.restriccion == restriccion) &&
            (identical(other.seccion_id, seccion_id) ||
                other.seccion_id == seccion_id) &&
            (identical(other.studio, studio) || other.studio == studio) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.epg, epg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adulto,
      category_id,
      card,
      description,
      number,
      premium,
      restriccion,
      seccion_id,
      studio,
      title,
      const DeepCollectionEquality().hash(epg));

  @override
  String toString() {
    return 'Channel(adulto: $adulto, category_id: $category_id, card: $card, description: $description, number: $number, premium: $premium, restriccion: $restriccion, seccion_id: $seccion_id, studio: $studio, title: $title, epg: $epg)';
  }
}

/// @nodoc
abstract mixin class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) _then) =
      _$ChannelCopyWithImpl;
  @useResult
  $Res call(
      {int adulto,
      int category_id,
      String card,
      String description,
      int number,
      int premium,
      int restriccion,
      int seccion_id,
      int studio,
      String title,
      List<Epg>? epg});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._self, this._then);

  final Channel _self;
  final $Res Function(Channel) _then;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adulto = null,
    Object? category_id = null,
    Object? card = null,
    Object? description = null,
    Object? number = null,
    Object? premium = null,
    Object? restriccion = null,
    Object? seccion_id = null,
    Object? studio = null,
    Object? title = null,
    Object? epg = freezed,
  }) {
    return _then(_self.copyWith(
      adulto: null == adulto
          ? _self.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as int,
      category_id: null == category_id
          ? _self.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int,
      card: null == card
          ? _self.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as int,
      restriccion: null == restriccion
          ? _self.restriccion
          : restriccion // ignore: cast_nullable_to_non_nullable
              as int,
      seccion_id: null == seccion_id
          ? _self.seccion_id
          : seccion_id // ignore: cast_nullable_to_non_nullable
              as int,
      studio: null == studio
          ? _self.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      epg: freezed == epg
          ? _self.epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<Epg>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Channel].
extension ChannelPatterns on Channel {
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
    TResult Function(_Channel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Channel() when $default != null:
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
    TResult Function(_Channel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Channel():
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
    TResult? Function(_Channel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Channel() when $default != null:
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
            int adulto,
            int category_id,
            String card,
            String description,
            int number,
            int premium,
            int restriccion,
            int seccion_id,
            int studio,
            String title,
            List<Epg>? epg)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Channel() when $default != null:
        return $default(
            _that.adulto,
            _that.category_id,
            _that.card,
            _that.description,
            _that.number,
            _that.premium,
            _that.restriccion,
            _that.seccion_id,
            _that.studio,
            _that.title,
            _that.epg);
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
            int adulto,
            int category_id,
            String card,
            String description,
            int number,
            int premium,
            int restriccion,
            int seccion_id,
            int studio,
            String title,
            List<Epg>? epg)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Channel():
        return $default(
            _that.adulto,
            _that.category_id,
            _that.card,
            _that.description,
            _that.number,
            _that.premium,
            _that.restriccion,
            _that.seccion_id,
            _that.studio,
            _that.title,
            _that.epg);
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
            int adulto,
            int category_id,
            String card,
            String description,
            int number,
            int premium,
            int restriccion,
            int seccion_id,
            int studio,
            String title,
            List<Epg>? epg)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Channel() when $default != null:
        return $default(
            _that.adulto,
            _that.category_id,
            _that.card,
            _that.description,
            _that.number,
            _that.premium,
            _that.restriccion,
            _that.seccion_id,
            _that.studio,
            _that.title,
            _that.epg);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Channel extends Channel {
  const _Channel(
      {required this.adulto,
      this.category_id = 0,
      required this.card,
      required this.description,
      required this.number,
      this.premium = 0,
      this.restriccion = 0,
      this.seccion_id = 0,
      required this.studio,
      required this.title,
      final List<Epg>? epg = const []})
      : _epg = epg,
        super._();
  factory _Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  @override
  final int adulto;
  @override
  @JsonKey()
  final int category_id;
  @override
  final String card;
  @override
  final String description;
  @override
  final int number;
  @override
  @JsonKey()
  final int premium;
  @override
  @JsonKey()
  final int restriccion;
  @override
  @JsonKey()
  final int seccion_id;
  @override
  final int studio;
  @override
  final String title;
  final List<Epg>? _epg;
  @override
  @JsonKey()
  List<Epg>? get epg {
    final value = _epg;
    if (value == null) return null;
    if (_epg is EqualUnmodifiableListView) return _epg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChannelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Channel &&
            (identical(other.adulto, adulto) || other.adulto == adulto) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.restriccion, restriccion) ||
                other.restriccion == restriccion) &&
            (identical(other.seccion_id, seccion_id) ||
                other.seccion_id == seccion_id) &&
            (identical(other.studio, studio) || other.studio == studio) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._epg, _epg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adulto,
      category_id,
      card,
      description,
      number,
      premium,
      restriccion,
      seccion_id,
      studio,
      title,
      const DeepCollectionEquality().hash(_epg));

  @override
  String toString() {
    return 'Channel(adulto: $adulto, category_id: $category_id, card: $card, description: $description, number: $number, premium: $premium, restriccion: $restriccion, seccion_id: $seccion_id, studio: $studio, title: $title, epg: $epg)';
  }
}

/// @nodoc
abstract mixin class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) _then) =
      __$ChannelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int adulto,
      int category_id,
      String card,
      String description,
      int number,
      int premium,
      int restriccion,
      int seccion_id,
      int studio,
      String title,
      List<Epg>? epg});
}

/// @nodoc
class __$ChannelCopyWithImpl<$Res> implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(this._self, this._then);

  final _Channel _self;
  final $Res Function(_Channel) _then;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adulto = null,
    Object? category_id = null,
    Object? card = null,
    Object? description = null,
    Object? number = null,
    Object? premium = null,
    Object? restriccion = null,
    Object? seccion_id = null,
    Object? studio = null,
    Object? title = null,
    Object? epg = freezed,
  }) {
    return _then(_Channel(
      adulto: null == adulto
          ? _self.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as int,
      category_id: null == category_id
          ? _self.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int,
      card: null == card
          ? _self.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as int,
      restriccion: null == restriccion
          ? _self.restriccion
          : restriccion // ignore: cast_nullable_to_non_nullable
              as int,
      seccion_id: null == seccion_id
          ? _self.seccion_id
          : seccion_id // ignore: cast_nullable_to_non_nullable
              as int,
      studio: null == studio
          ? _self.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      epg: freezed == epg
          ? _self._epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<Epg>?,
    ));
  }
}

// dart format on
