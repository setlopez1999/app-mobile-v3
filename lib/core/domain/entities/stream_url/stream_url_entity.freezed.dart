// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_url_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreamUrl {
  String get link;
  int get primario;
  String get channel;

  /// Create a copy of StreamUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamUrlCopyWith<StreamUrl> get copyWith =>
      _$StreamUrlCopyWithImpl<StreamUrl>(this as StreamUrl, _$identity);

  /// Serializes this StreamUrl to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamUrl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.primario, primario) ||
                other.primario == primario) &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, link, primario, channel);

  @override
  String toString() {
    return 'StreamUrl(link: $link, primario: $primario, channel: $channel)';
  }
}

/// @nodoc
abstract mixin class $StreamUrlCopyWith<$Res> {
  factory $StreamUrlCopyWith(StreamUrl value, $Res Function(StreamUrl) _then) =
      _$StreamUrlCopyWithImpl;
  @useResult
  $Res call({String link, int primario, String channel});
}

/// @nodoc
class _$StreamUrlCopyWithImpl<$Res> implements $StreamUrlCopyWith<$Res> {
  _$StreamUrlCopyWithImpl(this._self, this._then);

  final StreamUrl _self;
  final $Res Function(StreamUrl) _then;

  /// Create a copy of StreamUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? primario = null,
    Object? channel = null,
  }) {
    return _then(_self.copyWith(
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      primario: null == primario
          ? _self.primario
          : primario // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [StreamUrl].
extension StreamUrlPatterns on StreamUrl {
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
    TResult Function(_StreamUrl value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamUrl() when $default != null:
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
    TResult Function(_StreamUrl value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamUrl():
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
    TResult? Function(_StreamUrl value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamUrl() when $default != null:
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
    TResult Function(String link, int primario, String channel)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamUrl() when $default != null:
        return $default(_that.link, _that.primario, _that.channel);
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
    TResult Function(String link, int primario, String channel) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamUrl():
        return $default(_that.link, _that.primario, _that.channel);
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
    TResult? Function(String link, int primario, String channel)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamUrl() when $default != null:
        return $default(_that.link, _that.primario, _that.channel);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StreamUrl implements StreamUrl {
  const _StreamUrl(
      {required this.link, required this.primario, this.channel = ''});
  factory _StreamUrl.fromJson(Map<String, dynamic> json) =>
      _$StreamUrlFromJson(json);

  @override
  final String link;
  @override
  final int primario;
  @override
  @JsonKey()
  final String channel;

  /// Create a copy of StreamUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StreamUrlCopyWith<_StreamUrl> get copyWith =>
      __$StreamUrlCopyWithImpl<_StreamUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamUrlToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamUrl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.primario, primario) ||
                other.primario == primario) &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, link, primario, channel);

  @override
  String toString() {
    return 'StreamUrl(link: $link, primario: $primario, channel: $channel)';
  }
}

/// @nodoc
abstract mixin class _$StreamUrlCopyWith<$Res>
    implements $StreamUrlCopyWith<$Res> {
  factory _$StreamUrlCopyWith(
          _StreamUrl value, $Res Function(_StreamUrl) _then) =
      __$StreamUrlCopyWithImpl;
  @override
  @useResult
  $Res call({String link, int primario, String channel});
}

/// @nodoc
class __$StreamUrlCopyWithImpl<$Res> implements _$StreamUrlCopyWith<$Res> {
  __$StreamUrlCopyWithImpl(this._self, this._then);

  final _StreamUrl _self;
  final $Res Function(_StreamUrl) _then;

  /// Create a copy of StreamUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? link = null,
    Object? primario = null,
    Object? channel = null,
  }) {
    return _then(_StreamUrl(
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      primario: null == primario
          ? _self.primario
          : primario // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
