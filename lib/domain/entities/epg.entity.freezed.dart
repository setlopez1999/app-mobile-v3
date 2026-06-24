// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epg.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpgEntity _$EpgEntityFromJson(Map<String, dynamic> json) {
  return _EpgEntity.fromJson(json);
}

/// @nodoc
mixin _$EpgEntity {
  String get anterior => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_fin')
  int get fechaFin => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_ini')
  int get fechaIni => throw _privateConstructorUsedError;
  int get run => throw _privateConstructorUsedError;
  String get siguiente => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpgEntityCopyWith<EpgEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpgEntityCopyWith<$Res> {
  factory $EpgEntityCopyWith(EpgEntity value, $Res Function(EpgEntity) then) =
      _$EpgEntityCopyWithImpl<$Res, EpgEntity>;
  @useResult
  $Res call(
      {String anterior,
      String channel,
      String desc,
      @JsonKey(name: 'fecha_fin') int fechaFin,
      @JsonKey(name: 'fecha_ini') int fechaIni,
      int run,
      String siguiente,
      String titulo});
}

/// @nodoc
class _$EpgEntityCopyWithImpl<$Res, $Val extends EpgEntity>
    implements $EpgEntityCopyWith<$Res> {
  _$EpgEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anterior = null,
    Object? channel = null,
    Object? desc = null,
    Object? fechaFin = null,
    Object? fechaIni = null,
    Object? run = null,
    Object? siguiente = null,
    Object? titulo = null,
  }) {
    return _then(_value.copyWith(
      anterior: null == anterior
          ? _value.anterior
          : anterior // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      fechaFin: null == fechaFin
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as int,
      fechaIni: null == fechaIni
          ? _value.fechaIni
          : fechaIni // ignore: cast_nullable_to_non_nullable
              as int,
      run: null == run
          ? _value.run
          : run // ignore: cast_nullable_to_non_nullable
              as int,
      siguiente: null == siguiente
          ? _value.siguiente
          : siguiente // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpgEntityImplCopyWith<$Res>
    implements $EpgEntityCopyWith<$Res> {
  factory _$$EpgEntityImplCopyWith(
          _$EpgEntityImpl value, $Res Function(_$EpgEntityImpl) then) =
      __$$EpgEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String anterior,
      String channel,
      String desc,
      @JsonKey(name: 'fecha_fin') int fechaFin,
      @JsonKey(name: 'fecha_ini') int fechaIni,
      int run,
      String siguiente,
      String titulo});
}

/// @nodoc
class __$$EpgEntityImplCopyWithImpl<$Res>
    extends _$EpgEntityCopyWithImpl<$Res, _$EpgEntityImpl>
    implements _$$EpgEntityImplCopyWith<$Res> {
  __$$EpgEntityImplCopyWithImpl(
      _$EpgEntityImpl _value, $Res Function(_$EpgEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anterior = null,
    Object? channel = null,
    Object? desc = null,
    Object? fechaFin = null,
    Object? fechaIni = null,
    Object? run = null,
    Object? siguiente = null,
    Object? titulo = null,
  }) {
    return _then(_$EpgEntityImpl(
      anterior: null == anterior
          ? _value.anterior
          : anterior // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      fechaFin: null == fechaFin
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as int,
      fechaIni: null == fechaIni
          ? _value.fechaIni
          : fechaIni // ignore: cast_nullable_to_non_nullable
              as int,
      run: null == run
          ? _value.run
          : run // ignore: cast_nullable_to_non_nullable
              as int,
      siguiente: null == siguiente
          ? _value.siguiente
          : siguiente // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpgEntityImpl implements _EpgEntity {
  const _$EpgEntityImpl(
      {required this.anterior,
      required this.channel,
      required this.desc,
      @JsonKey(name: 'fecha_fin') required this.fechaFin,
      @JsonKey(name: 'fecha_ini') required this.fechaIni,
      required this.run,
      required this.siguiente,
      required this.titulo});

  factory _$EpgEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpgEntityImplFromJson(json);

  @override
  final String anterior;
  @override
  final String channel;
  @override
  final String desc;
  @override
  @JsonKey(name: 'fecha_fin')
  final int fechaFin;
  @override
  @JsonKey(name: 'fecha_ini')
  final int fechaIni;
  @override
  final int run;
  @override
  final String siguiente;
  @override
  final String titulo;

  @override
  String toString() {
    return 'EpgEntity(anterior: $anterior, channel: $channel, desc: $desc, fechaFin: $fechaFin, fechaIni: $fechaIni, run: $run, siguiente: $siguiente, titulo: $titulo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpgEntityImpl &&
            (identical(other.anterior, anterior) ||
                other.anterior == anterior) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.fechaFin, fechaFin) ||
                other.fechaFin == fechaFin) &&
            (identical(other.fechaIni, fechaIni) ||
                other.fechaIni == fechaIni) &&
            (identical(other.run, run) || other.run == run) &&
            (identical(other.siguiente, siguiente) ||
                other.siguiente == siguiente) &&
            (identical(other.titulo, titulo) || other.titulo == titulo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, anterior, channel, desc,
      fechaFin, fechaIni, run, siguiente, titulo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpgEntityImplCopyWith<_$EpgEntityImpl> get copyWith =>
      __$$EpgEntityImplCopyWithImpl<_$EpgEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpgEntityImplToJson(
      this,
    );
  }
}

abstract class _EpgEntity implements EpgEntity {
  const factory _EpgEntity(
      {required final String anterior,
      required final String channel,
      required final String desc,
      @JsonKey(name: 'fecha_fin') required final int fechaFin,
      @JsonKey(name: 'fecha_ini') required final int fechaIni,
      required final int run,
      required final String siguiente,
      required final String titulo}) = _$EpgEntityImpl;

  factory _EpgEntity.fromJson(Map<String, dynamic> json) =
      _$EpgEntityImpl.fromJson;

  @override
  String get anterior;
  @override
  String get channel;
  @override
  String get desc;
  @override
  @JsonKey(name: 'fecha_fin')
  int get fechaFin;
  @override
  @JsonKey(name: 'fecha_ini')
  int get fechaIni;
  @override
  int get run;
  @override
  String get siguiente;
  @override
  String get titulo;
  @override
  @JsonKey(ignore: true)
  _$$EpgEntityImplCopyWith<_$EpgEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
