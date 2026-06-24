// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  @BinaryToBooleanConverter()
  bool get adulto => throw _privateConstructorUsedError;
  String get card => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_ios')
  String get cardIos => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get playlist => throw _privateConstructorUsedError;
  @BinaryToBooleanConverter()
  bool get premium => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  @BinaryToBooleanConverter()
  bool get catchup => throw _privateConstructorUsedError;
  int get studio => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get vivo => throw _privateConstructorUsedError;
  List<EpgEntity> get epg => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String? get streamLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {@BinaryToBooleanConverter() bool adulto,
      String card,
      @JsonKey(name: 'card_ios') String cardIos,
      String description,
      int number,
      int playlist,
      @BinaryToBooleanConverter() bool premium,
      @JsonKey(defaultValue: false) @BinaryToBooleanConverter() bool catchup,
      int studio,
      String title,
      int vivo,
      List<EpgEntity> epg,
      bool isFavorite,
      String? streamLink});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adulto = null,
    Object? card = null,
    Object? cardIos = null,
    Object? description = null,
    Object? number = null,
    Object? playlist = null,
    Object? premium = null,
    Object? catchup = null,
    Object? studio = null,
    Object? title = null,
    Object? vivo = null,
    Object? epg = null,
    Object? isFavorite = null,
    Object? streamLink = freezed,
  }) {
    return _then(_value.copyWith(
      adulto: null == adulto
          ? _value.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as bool,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      cardIos: null == cardIos
          ? _value.cardIos
          : cardIos // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as int,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      catchup: null == catchup
          ? _value.catchup
          : catchup // ignore: cast_nullable_to_non_nullable
              as bool,
      studio: null == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vivo: null == vivo
          ? _value.vivo
          : vivo // ignore: cast_nullable_to_non_nullable
              as int,
      epg: null == epg
          ? _value.epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<EpgEntity>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      streamLink: freezed == streamLink
          ? _value.streamLink
          : streamLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@BinaryToBooleanConverter() bool adulto,
      String card,
      @JsonKey(name: 'card_ios') String cardIos,
      String description,
      int number,
      int playlist,
      @BinaryToBooleanConverter() bool premium,
      @JsonKey(defaultValue: false) @BinaryToBooleanConverter() bool catchup,
      int studio,
      String title,
      int vivo,
      List<EpgEntity> epg,
      bool isFavorite,
      String? streamLink});
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adulto = null,
    Object? card = null,
    Object? cardIos = null,
    Object? description = null,
    Object? number = null,
    Object? playlist = null,
    Object? premium = null,
    Object? catchup = null,
    Object? studio = null,
    Object? title = null,
    Object? vivo = null,
    Object? epg = null,
    Object? isFavorite = null,
    Object? streamLink = freezed,
  }) {
    return _then(_$ChannelImpl(
      adulto: null == adulto
          ? _value.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as bool,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      cardIos: null == cardIos
          ? _value.cardIos
          : cardIos // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as int,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      catchup: null == catchup
          ? _value.catchup
          : catchup // ignore: cast_nullable_to_non_nullable
              as bool,
      studio: null == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vivo: null == vivo
          ? _value.vivo
          : vivo // ignore: cast_nullable_to_non_nullable
              as int,
      epg: null == epg
          ? _value._epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<EpgEntity>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      streamLink: freezed == streamLink
          ? _value.streamLink
          : streamLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl implements _Channel {
  const _$ChannelImpl(
      {@BinaryToBooleanConverter() required this.adulto,
      required this.card,
      @JsonKey(name: 'card_ios') required this.cardIos,
      required this.description,
      required this.number,
      required this.playlist,
      @BinaryToBooleanConverter() required this.premium,
      @JsonKey(defaultValue: false)
      @BinaryToBooleanConverter()
      required this.catchup,
      required this.studio,
      required this.title,
      required this.vivo,
      final List<EpgEntity> epg = const [],
      this.isFavorite = false,
      this.streamLink})
      : _epg = epg;

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  @BinaryToBooleanConverter()
  final bool adulto;
  @override
  final String card;
  @override
  @JsonKey(name: 'card_ios')
  final String cardIos;
  @override
  final String description;
  @override
  final int number;
  @override
  final int playlist;
  @override
  @BinaryToBooleanConverter()
  final bool premium;
  @override
  @JsonKey(defaultValue: false)
  @BinaryToBooleanConverter()
  final bool catchup;
  @override
  final int studio;
  @override
  final String title;
  @override
  final int vivo;
  final List<EpgEntity> _epg;
  @override
  @JsonKey()
  List<EpgEntity> get epg {
    if (_epg is EqualUnmodifiableListView) return _epg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_epg);
  }

  @override
  @JsonKey()
  final bool isFavorite;
  @override
  final String? streamLink;

  @override
  String toString() {
    return 'Channel(adulto: $adulto, card: $card, cardIos: $cardIos, description: $description, number: $number, playlist: $playlist, premium: $premium, catchup: $catchup, studio: $studio, title: $title, vivo: $vivo, epg: $epg, isFavorite: $isFavorite, streamLink: $streamLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.adulto, adulto) || other.adulto == adulto) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.cardIos, cardIos) || other.cardIos == cardIos) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.catchup, catchup) || other.catchup == catchup) &&
            (identical(other.studio, studio) || other.studio == studio) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.vivo, vivo) || other.vivo == vivo) &&
            const DeepCollectionEquality().equals(other._epg, _epg) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.streamLink, streamLink) ||
                other.streamLink == streamLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adulto,
      card,
      cardIos,
      description,
      number,
      playlist,
      premium,
      catchup,
      studio,
      title,
      vivo,
      const DeepCollectionEquality().hash(_epg),
      isFavorite,
      streamLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {@BinaryToBooleanConverter() required final bool adulto,
      required final String card,
      @JsonKey(name: 'card_ios') required final String cardIos,
      required final String description,
      required final int number,
      required final int playlist,
      @BinaryToBooleanConverter() required final bool premium,
      @JsonKey(defaultValue: false)
      @BinaryToBooleanConverter()
      required final bool catchup,
      required final int studio,
      required final String title,
      required final int vivo,
      final List<EpgEntity> epg,
      final bool isFavorite,
      final String? streamLink}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  @BinaryToBooleanConverter()
  bool get adulto;
  @override
  String get card;
  @override
  @JsonKey(name: 'card_ios')
  String get cardIos;
  @override
  String get description;
  @override
  int get number;
  @override
  int get playlist;
  @override
  @BinaryToBooleanConverter()
  bool get premium;
  @override
  @JsonKey(defaultValue: false)
  @BinaryToBooleanConverter()
  bool get catchup;
  @override
  int get studio;
  @override
  String get title;
  @override
  int get vivo;
  @override
  List<EpgEntity> get epg;
  @override
  bool get isFavorite;
  @override
  String? get streamLink;
  @override
  @JsonKey(ignore: true)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
