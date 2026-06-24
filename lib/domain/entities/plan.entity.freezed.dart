// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlanEntity _$PlanEntityFromJson(Map<String, dynamic> json) {
  return _PlanEntity.fromJson(json);
}

/// @nodoc
mixin _$PlanEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan_crm_id')
  int get planCrmId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get channels => throw _privateConstructorUsedError;
  @JsonKey(name: 'channels_grid_image')
  String get channelsGridImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'simultaneous_devices')
  int get simultaneousDevices => throw _privateConstructorUsedError;
  @JsonKey(name: 'free_days')
  int get freeDays => throw _privateConstructorUsedError;
  bool get state => throw _privateConstructorUsedError;
  List<ListChannel> get listChannel => throw _privateConstructorUsedError;

  /// Serializes this PlanEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanEntityCopyWith<PlanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanEntityCopyWith<$Res> {
  factory $PlanEntityCopyWith(
          PlanEntity value, $Res Function(PlanEntity) then) =
      _$PlanEntityCopyWithImpl<$Res, PlanEntity>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'plan_crm_id') int planCrmId,
      String name,
      int channels,
      @JsonKey(name: 'channels_grid_image') String channelsGridImage,
      @JsonKey(name: 'simultaneous_devices') int simultaneousDevices,
      @JsonKey(name: 'free_days') int freeDays,
      bool state,
      List<ListChannel> listChannel});
}

/// @nodoc
class _$PlanEntityCopyWithImpl<$Res, $Val extends PlanEntity>
    implements $PlanEntityCopyWith<$Res> {
  _$PlanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planCrmId = null,
    Object? name = null,
    Object? channels = null,
    Object? channelsGridImage = null,
    Object? simultaneousDevices = null,
    Object? freeDays = null,
    Object? state = null,
    Object? listChannel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      planCrmId: null == planCrmId
          ? _value.planCrmId
          : planCrmId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int,
      channelsGridImage: null == channelsGridImage
          ? _value.channelsGridImage
          : channelsGridImage // ignore: cast_nullable_to_non_nullable
              as String,
      simultaneousDevices: null == simultaneousDevices
          ? _value.simultaneousDevices
          : simultaneousDevices // ignore: cast_nullable_to_non_nullable
              as int,
      freeDays: null == freeDays
          ? _value.freeDays
          : freeDays // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
      listChannel: null == listChannel
          ? _value.listChannel
          : listChannel // ignore: cast_nullable_to_non_nullable
              as List<ListChannel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanEntityImplCopyWith<$Res>
    implements $PlanEntityCopyWith<$Res> {
  factory _$$PlanEntityImplCopyWith(
          _$PlanEntityImpl value, $Res Function(_$PlanEntityImpl) then) =
      __$$PlanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'plan_crm_id') int planCrmId,
      String name,
      int channels,
      @JsonKey(name: 'channels_grid_image') String channelsGridImage,
      @JsonKey(name: 'simultaneous_devices') int simultaneousDevices,
      @JsonKey(name: 'free_days') int freeDays,
      bool state,
      List<ListChannel> listChannel});
}

/// @nodoc
class __$$PlanEntityImplCopyWithImpl<$Res>
    extends _$PlanEntityCopyWithImpl<$Res, _$PlanEntityImpl>
    implements _$$PlanEntityImplCopyWith<$Res> {
  __$$PlanEntityImplCopyWithImpl(
      _$PlanEntityImpl _value, $Res Function(_$PlanEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planCrmId = null,
    Object? name = null,
    Object? channels = null,
    Object? channelsGridImage = null,
    Object? simultaneousDevices = null,
    Object? freeDays = null,
    Object? state = null,
    Object? listChannel = null,
  }) {
    return _then(_$PlanEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      planCrmId: null == planCrmId
          ? _value.planCrmId
          : planCrmId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int,
      channelsGridImage: null == channelsGridImage
          ? _value.channelsGridImage
          : channelsGridImage // ignore: cast_nullable_to_non_nullable
              as String,
      simultaneousDevices: null == simultaneousDevices
          ? _value.simultaneousDevices
          : simultaneousDevices // ignore: cast_nullable_to_non_nullable
              as int,
      freeDays: null == freeDays
          ? _value.freeDays
          : freeDays // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
      listChannel: null == listChannel
          ? _value._listChannel
          : listChannel // ignore: cast_nullable_to_non_nullable
              as List<ListChannel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanEntityImpl implements _PlanEntity {
  const _$PlanEntityImpl(
      {required this.id,
      @JsonKey(name: 'plan_crm_id') required this.planCrmId,
      required this.name,
      required this.channels,
      @JsonKey(name: 'channels_grid_image') required this.channelsGridImage,
      @JsonKey(name: 'simultaneous_devices') required this.simultaneousDevices,
      @JsonKey(name: 'free_days') required this.freeDays,
      required this.state,
      required final List<ListChannel> listChannel})
      : _listChannel = listChannel;

  factory _$PlanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'plan_crm_id')
  final int planCrmId;
  @override
  final String name;
  @override
  final int channels;
  @override
  @JsonKey(name: 'channels_grid_image')
  final String channelsGridImage;
  @override
  @JsonKey(name: 'simultaneous_devices')
  final int simultaneousDevices;
  @override
  @JsonKey(name: 'free_days')
  final int freeDays;
  @override
  final bool state;
  final List<ListChannel> _listChannel;
  @override
  List<ListChannel> get listChannel {
    if (_listChannel is EqualUnmodifiableListView) return _listChannel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listChannel);
  }

  @override
  String toString() {
    return 'PlanEntity(id: $id, planCrmId: $planCrmId, name: $name, channels: $channels, channelsGridImage: $channelsGridImage, simultaneousDevices: $simultaneousDevices, freeDays: $freeDays, state: $state, listChannel: $listChannel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planCrmId, planCrmId) ||
                other.planCrmId == planCrmId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.channels, channels) ||
                other.channels == channels) &&
            (identical(other.channelsGridImage, channelsGridImage) ||
                other.channelsGridImage == channelsGridImage) &&
            (identical(other.simultaneousDevices, simultaneousDevices) ||
                other.simultaneousDevices == simultaneousDevices) &&
            (identical(other.freeDays, freeDays) ||
                other.freeDays == freeDays) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._listChannel, _listChannel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      planCrmId,
      name,
      channels,
      channelsGridImage,
      simultaneousDevices,
      freeDays,
      state,
      const DeepCollectionEquality().hash(_listChannel));

  /// Create a copy of PlanEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanEntityImplCopyWith<_$PlanEntityImpl> get copyWith =>
      __$$PlanEntityImplCopyWithImpl<_$PlanEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanEntityImplToJson(
      this,
    );
  }
}

abstract class _PlanEntity implements PlanEntity {
  const factory _PlanEntity(
      {required final int id,
      @JsonKey(name: 'plan_crm_id') required final int planCrmId,
      required final String name,
      required final int channels,
      @JsonKey(name: 'channels_grid_image')
      required final String channelsGridImage,
      @JsonKey(name: 'simultaneous_devices')
      required final int simultaneousDevices,
      @JsonKey(name: 'free_days') required final int freeDays,
      required final bool state,
      required final List<ListChannel> listChannel}) = _$PlanEntityImpl;

  factory _PlanEntity.fromJson(Map<String, dynamic> json) =
      _$PlanEntityImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'plan_crm_id')
  int get planCrmId;
  @override
  String get name;
  @override
  int get channels;
  @override
  @JsonKey(name: 'channels_grid_image')
  String get channelsGridImage;
  @override
  @JsonKey(name: 'simultaneous_devices')
  int get simultaneousDevices;
  @override
  @JsonKey(name: 'free_days')
  int get freeDays;
  @override
  bool get state;
  @override
  List<ListChannel> get listChannel;

  /// Create a copy of PlanEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanEntityImplCopyWith<_$PlanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListChannel _$ListChannelFromJson(Map<String, dynamic> json) {
  return _ListChannel.fromJson(json);
}

/// @nodoc
mixin _$ListChannel {
  String get nombre => throw _privateConstructorUsedError;
  String get imagen => throw _privateConstructorUsedError;

  /// Serializes this ListChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListChannelCopyWith<ListChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListChannelCopyWith<$Res> {
  factory $ListChannelCopyWith(
          ListChannel value, $Res Function(ListChannel) then) =
      _$ListChannelCopyWithImpl<$Res, ListChannel>;
  @useResult
  $Res call({String nombre, String imagen});
}

/// @nodoc
class _$ListChannelCopyWithImpl<$Res, $Val extends ListChannel>
    implements $ListChannelCopyWith<$Res> {
  _$ListChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? imagen = null,
  }) {
    return _then(_value.copyWith(
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListChannelImplCopyWith<$Res>
    implements $ListChannelCopyWith<$Res> {
  factory _$$ListChannelImplCopyWith(
          _$ListChannelImpl value, $Res Function(_$ListChannelImpl) then) =
      __$$ListChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nombre, String imagen});
}

/// @nodoc
class __$$ListChannelImplCopyWithImpl<$Res>
    extends _$ListChannelCopyWithImpl<$Res, _$ListChannelImpl>
    implements _$$ListChannelImplCopyWith<$Res> {
  __$$ListChannelImplCopyWithImpl(
      _$ListChannelImpl _value, $Res Function(_$ListChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? imagen = null,
  }) {
    return _then(_$ListChannelImpl(
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListChannelImpl implements _ListChannel {
  const _$ListChannelImpl({required this.nombre, required this.imagen});

  factory _$ListChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListChannelImplFromJson(json);

  @override
  final String nombre;
  @override
  final String imagen;

  @override
  String toString() {
    return 'ListChannel(nombre: $nombre, imagen: $imagen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListChannelImpl &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.imagen, imagen) || other.imagen == imagen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nombre, imagen);

  /// Create a copy of ListChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListChannelImplCopyWith<_$ListChannelImpl> get copyWith =>
      __$$ListChannelImplCopyWithImpl<_$ListChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListChannelImplToJson(
      this,
    );
  }
}

abstract class _ListChannel implements ListChannel {
  const factory _ListChannel(
      {required final String nombre,
      required final String imagen}) = _$ListChannelImpl;

  factory _ListChannel.fromJson(Map<String, dynamic> json) =
      _$ListChannelImpl.fromJson;

  @override
  String get nombre;
  @override
  String get imagen;

  /// Create a copy of ListChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListChannelImplCopyWith<_$ListChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
