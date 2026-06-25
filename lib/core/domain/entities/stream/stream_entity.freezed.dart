// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreamEntity {
  int get audio;
  int get cdn;
  int get premium;
  int get vivo;
  Channel get channel;
  List<StreamUrl> get url;
  List<Epg> get epg;
  int get catchup;
  int get restriccion;
  String get channelLinux;
  String get channelMovil;
  String get linkLinux;
  String get linkMovil;

  /// Create a copy of StreamEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamEntityCopyWith<StreamEntity> get copyWith =>
      _$StreamEntityCopyWithImpl<StreamEntity>(
          this as StreamEntity, _$identity);

  /// Serializes this StreamEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamEntity &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.cdn, cdn) || other.cdn == cdn) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.vivo, vivo) || other.vivo == vivo) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.epg, epg) &&
            (identical(other.catchup, catchup) || other.catchup == catchup) &&
            (identical(other.restriccion, restriccion) ||
                other.restriccion == restriccion) &&
            (identical(other.channelLinux, channelLinux) ||
                other.channelLinux == channelLinux) &&
            (identical(other.channelMovil, channelMovil) ||
                other.channelMovil == channelMovil) &&
            (identical(other.linkLinux, linkLinux) ||
                other.linkLinux == linkLinux) &&
            (identical(other.linkMovil, linkMovil) ||
                other.linkMovil == linkMovil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      audio,
      cdn,
      premium,
      vivo,
      channel,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(epg),
      catchup,
      restriccion,
      channelLinux,
      channelMovil,
      linkLinux,
      linkMovil);

  @override
  String toString() {
    return 'StreamEntity(audio: $audio, cdn: $cdn, premium: $premium, vivo: $vivo, channel: $channel, url: $url, epg: $epg, catchup: $catchup, restriccion: $restriccion, channelLinux: $channelLinux, channelMovil: $channelMovil, linkLinux: $linkLinux, linkMovil: $linkMovil)';
  }
}

/// @nodoc
abstract mixin class $StreamEntityCopyWith<$Res> {
  factory $StreamEntityCopyWith(
          StreamEntity value, $Res Function(StreamEntity) _then) =
      _$StreamEntityCopyWithImpl;
  @useResult
  $Res call(
      {int audio,
      int cdn,
      int premium,
      int vivo,
      Channel channel,
      List<StreamUrl> url,
      List<Epg> epg,
      int catchup,
      int restriccion,
      String channelLinux,
      String channelMovil,
      String linkLinux,
      String linkMovil});

  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$StreamEntityCopyWithImpl<$Res> implements $StreamEntityCopyWith<$Res> {
  _$StreamEntityCopyWithImpl(this._self, this._then);

  final StreamEntity _self;
  final $Res Function(StreamEntity) _then;

  /// Create a copy of StreamEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = null,
    Object? cdn = null,
    Object? premium = null,
    Object? vivo = null,
    Object? channel = null,
    Object? url = null,
    Object? epg = null,
    Object? catchup = null,
    Object? restriccion = null,
    Object? channelLinux = null,
    Object? channelMovil = null,
    Object? linkLinux = null,
    Object? linkMovil = null,
  }) {
    return _then(_self.copyWith(
      audio: null == audio
          ? _self.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as int,
      cdn: null == cdn
          ? _self.cdn
          : cdn // ignore: cast_nullable_to_non_nullable
              as int,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as int,
      vivo: null == vivo
          ? _self.vivo
          : vivo // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as List<StreamUrl>,
      epg: null == epg
          ? _self.epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<Epg>,
      catchup: null == catchup
          ? _self.catchup
          : catchup // ignore: cast_nullable_to_non_nullable
              as int,
      restriccion: null == restriccion
          ? _self.restriccion
          : restriccion // ignore: cast_nullable_to_non_nullable
              as int,
      channelLinux: null == channelLinux
          ? _self.channelLinux
          : channelLinux // ignore: cast_nullable_to_non_nullable
              as String,
      channelMovil: null == channelMovil
          ? _self.channelMovil
          : channelMovil // ignore: cast_nullable_to_non_nullable
              as String,
      linkLinux: null == linkLinux
          ? _self.linkLinux
          : linkLinux // ignore: cast_nullable_to_non_nullable
              as String,
      linkMovil: null == linkMovil
          ? _self.linkMovil
          : linkMovil // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StreamEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelCopyWith<$Res> get channel {
    return $ChannelCopyWith<$Res>(_self.channel, (value) {
      return _then(_self.copyWith(channel: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StreamEntity].
extension StreamEntityPatterns on StreamEntity {
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
    TResult Function(_StreamEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamEntity() when $default != null:
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
    TResult Function(_StreamEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamEntity():
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
    TResult? Function(_StreamEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamEntity() when $default != null:
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
            int audio,
            int cdn,
            int premium,
            int vivo,
            Channel channel,
            List<StreamUrl> url,
            List<Epg> epg,
            int catchup,
            int restriccion,
            String channelLinux,
            String channelMovil,
            String linkLinux,
            String linkMovil)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamEntity() when $default != null:
        return $default(
            _that.audio,
            _that.cdn,
            _that.premium,
            _that.vivo,
            _that.channel,
            _that.url,
            _that.epg,
            _that.catchup,
            _that.restriccion,
            _that.channelLinux,
            _that.channelMovil,
            _that.linkLinux,
            _that.linkMovil);
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
            int audio,
            int cdn,
            int premium,
            int vivo,
            Channel channel,
            List<StreamUrl> url,
            List<Epg> epg,
            int catchup,
            int restriccion,
            String channelLinux,
            String channelMovil,
            String linkLinux,
            String linkMovil)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamEntity():
        return $default(
            _that.audio,
            _that.cdn,
            _that.premium,
            _that.vivo,
            _that.channel,
            _that.url,
            _that.epg,
            _that.catchup,
            _that.restriccion,
            _that.channelLinux,
            _that.channelMovil,
            _that.linkLinux,
            _that.linkMovil);
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
            int audio,
            int cdn,
            int premium,
            int vivo,
            Channel channel,
            List<StreamUrl> url,
            List<Epg> epg,
            int catchup,
            int restriccion,
            String channelLinux,
            String channelMovil,
            String linkLinux,
            String linkMovil)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamEntity() when $default != null:
        return $default(
            _that.audio,
            _that.cdn,
            _that.premium,
            _that.vivo,
            _that.channel,
            _that.url,
            _that.epg,
            _that.catchup,
            _that.restriccion,
            _that.channelLinux,
            _that.channelMovil,
            _that.linkLinux,
            _that.linkMovil);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StreamEntity extends StreamEntity {
  const _StreamEntity(
      {required this.audio,
      required this.cdn,
      required this.premium,
      required this.vivo,
      required this.channel,
      final List<StreamUrl> url = const [],
      final List<Epg> epg = const [],
      this.catchup = 0,
      this.restriccion = 0,
      this.channelLinux = '',
      this.channelMovil = '',
      this.linkLinux = '',
      this.linkMovil = ''})
      : _url = url,
        _epg = epg,
        super._();
  factory _StreamEntity.fromJson(Map<String, dynamic> json) =>
      _$StreamEntityFromJson(json);

  @override
  final int audio;
  @override
  final int cdn;
  @override
  final int premium;
  @override
  final int vivo;
  @override
  final Channel channel;
  final List<StreamUrl> _url;
  @override
  @JsonKey()
  List<StreamUrl> get url {
    if (_url is EqualUnmodifiableListView) return _url;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_url);
  }

  final List<Epg> _epg;
  @override
  @JsonKey()
  List<Epg> get epg {
    if (_epg is EqualUnmodifiableListView) return _epg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_epg);
  }

  @override
  @JsonKey()
  final int catchup;
  @override
  @JsonKey()
  final int restriccion;
  @override
  @JsonKey()
  final String channelLinux;
  @override
  @JsonKey()
  final String channelMovil;
  @override
  @JsonKey()
  final String linkLinux;
  @override
  @JsonKey()
  final String linkMovil;

  /// Create a copy of StreamEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StreamEntityCopyWith<_StreamEntity> get copyWith =>
      __$StreamEntityCopyWithImpl<_StreamEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamEntity &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.cdn, cdn) || other.cdn == cdn) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.vivo, vivo) || other.vivo == vivo) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            const DeepCollectionEquality().equals(other._url, _url) &&
            const DeepCollectionEquality().equals(other._epg, _epg) &&
            (identical(other.catchup, catchup) || other.catchup == catchup) &&
            (identical(other.restriccion, restriccion) ||
                other.restriccion == restriccion) &&
            (identical(other.channelLinux, channelLinux) ||
                other.channelLinux == channelLinux) &&
            (identical(other.channelMovil, channelMovil) ||
                other.channelMovil == channelMovil) &&
            (identical(other.linkLinux, linkLinux) ||
                other.linkLinux == linkLinux) &&
            (identical(other.linkMovil, linkMovil) ||
                other.linkMovil == linkMovil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      audio,
      cdn,
      premium,
      vivo,
      channel,
      const DeepCollectionEquality().hash(_url),
      const DeepCollectionEquality().hash(_epg),
      catchup,
      restriccion,
      channelLinux,
      channelMovil,
      linkLinux,
      linkMovil);

  @override
  String toString() {
    return 'StreamEntity(audio: $audio, cdn: $cdn, premium: $premium, vivo: $vivo, channel: $channel, url: $url, epg: $epg, catchup: $catchup, restriccion: $restriccion, channelLinux: $channelLinux, channelMovil: $channelMovil, linkLinux: $linkLinux, linkMovil: $linkMovil)';
  }
}

/// @nodoc
abstract mixin class _$StreamEntityCopyWith<$Res>
    implements $StreamEntityCopyWith<$Res> {
  factory _$StreamEntityCopyWith(
          _StreamEntity value, $Res Function(_StreamEntity) _then) =
      __$StreamEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int audio,
      int cdn,
      int premium,
      int vivo,
      Channel channel,
      List<StreamUrl> url,
      List<Epg> epg,
      int catchup,
      int restriccion,
      String channelLinux,
      String channelMovil,
      String linkLinux,
      String linkMovil});

  @override
  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$StreamEntityCopyWithImpl<$Res>
    implements _$StreamEntityCopyWith<$Res> {
  __$StreamEntityCopyWithImpl(this._self, this._then);

  final _StreamEntity _self;
  final $Res Function(_StreamEntity) _then;

  /// Create a copy of StreamEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? audio = null,
    Object? cdn = null,
    Object? premium = null,
    Object? vivo = null,
    Object? channel = null,
    Object? url = null,
    Object? epg = null,
    Object? catchup = null,
    Object? restriccion = null,
    Object? channelLinux = null,
    Object? channelMovil = null,
    Object? linkLinux = null,
    Object? linkMovil = null,
  }) {
    return _then(_StreamEntity(
      audio: null == audio
          ? _self.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as int,
      cdn: null == cdn
          ? _self.cdn
          : cdn // ignore: cast_nullable_to_non_nullable
              as int,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as int,
      vivo: null == vivo
          ? _self.vivo
          : vivo // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
      url: null == url
          ? _self._url
          : url // ignore: cast_nullable_to_non_nullable
              as List<StreamUrl>,
      epg: null == epg
          ? _self._epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<Epg>,
      catchup: null == catchup
          ? _self.catchup
          : catchup // ignore: cast_nullable_to_non_nullable
              as int,
      restriccion: null == restriccion
          ? _self.restriccion
          : restriccion // ignore: cast_nullable_to_non_nullable
              as int,
      channelLinux: null == channelLinux
          ? _self.channelLinux
          : channelLinux // ignore: cast_nullable_to_non_nullable
              as String,
      channelMovil: null == channelMovil
          ? _self.channelMovil
          : channelMovil // ignore: cast_nullable_to_non_nullable
              as String,
      linkLinux: null == linkLinux
          ? _self.linkLinux
          : linkLinux // ignore: cast_nullable_to_non_nullable
              as String,
      linkMovil: null == linkMovil
          ? _self.linkMovil
          : linkMovil // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StreamEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelCopyWith<$Res> get channel {
    return $ChannelCopyWith<$Res>(_self.channel, (value) {
      return _then(_self.copyWith(channel: value));
    });
  }
}

// dart format on
