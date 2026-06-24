// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_guide.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvGuideEntity _$TvGuideEntityFromJson(Map<String, dynamic> json) {
  return _TvGuideEntity.fromJson(json);
}

/// @nodoc
mixin _$TvGuideEntity {
  @JsonKey(name: 'cn_id')
  int get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  int get numero => throw _privateConstructorUsedError;
  String get imagen => throw _privateConstructorUsedError;
  int get adulto => throw _privateConstructorUsedError;
  int get cdn => throw _privateConstructorUsedError;
  List<EpgEntity> get epg => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvGuideEntityCopyWith<TvGuideEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvGuideEntityCopyWith<$Res> {
  factory $TvGuideEntityCopyWith(
          TvGuideEntity value, $Res Function(TvGuideEntity) then) =
      _$TvGuideEntityCopyWithImpl<$Res, TvGuideEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cn_id') int id,
      String nombre,
      String descripcion,
      int numero,
      String imagen,
      int adulto,
      int cdn,
      List<EpgEntity> epg,
      @JsonKey(name: 'category_id') int categoryId});
}

/// @nodoc
class _$TvGuideEntityCopyWithImpl<$Res, $Val extends TvGuideEntity>
    implements $TvGuideEntityCopyWith<$Res> {
  _$TvGuideEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? descripcion = null,
    Object? numero = null,
    Object? imagen = null,
    Object? adulto = null,
    Object? cdn = null,
    Object? epg = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      numero: null == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
      adulto: null == adulto
          ? _value.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as int,
      cdn: null == cdn
          ? _value.cdn
          : cdn // ignore: cast_nullable_to_non_nullable
              as int,
      epg: null == epg
          ? _value.epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<EpgEntity>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvGuideEntityImplCopyWith<$Res>
    implements $TvGuideEntityCopyWith<$Res> {
  factory _$$TvGuideEntityImplCopyWith(
          _$TvGuideEntityImpl value, $Res Function(_$TvGuideEntityImpl) then) =
      __$$TvGuideEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cn_id') int id,
      String nombre,
      String descripcion,
      int numero,
      String imagen,
      int adulto,
      int cdn,
      List<EpgEntity> epg,
      @JsonKey(name: 'category_id') int categoryId});
}

/// @nodoc
class __$$TvGuideEntityImplCopyWithImpl<$Res>
    extends _$TvGuideEntityCopyWithImpl<$Res, _$TvGuideEntityImpl>
    implements _$$TvGuideEntityImplCopyWith<$Res> {
  __$$TvGuideEntityImplCopyWithImpl(
      _$TvGuideEntityImpl _value, $Res Function(_$TvGuideEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? descripcion = null,
    Object? numero = null,
    Object? imagen = null,
    Object? adulto = null,
    Object? cdn = null,
    Object? epg = null,
    Object? categoryId = null,
  }) {
    return _then(_$TvGuideEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      numero: null == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
      adulto: null == adulto
          ? _value.adulto
          : adulto // ignore: cast_nullable_to_non_nullable
              as int,
      cdn: null == cdn
          ? _value.cdn
          : cdn // ignore: cast_nullable_to_non_nullable
              as int,
      epg: null == epg
          ? _value._epg
          : epg // ignore: cast_nullable_to_non_nullable
              as List<EpgEntity>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvGuideEntityImpl implements _TvGuideEntity {
  const _$TvGuideEntityImpl(
      {@JsonKey(name: 'cn_id') required this.id,
      required this.nombre,
      required this.descripcion,
      required this.numero,
      required this.imagen,
      required this.adulto,
      required this.cdn,
      required final List<EpgEntity> epg,
      @JsonKey(name: 'category_id') required this.categoryId})
      : _epg = epg;

  factory _$TvGuideEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvGuideEntityImplFromJson(json);

  @override
  @JsonKey(name: 'cn_id')
  final int id;
  @override
  final String nombre;
  @override
  final String descripcion;
  @override
  final int numero;
  @override
  final String imagen;
  @override
  final int adulto;
  @override
  final int cdn;
  final List<EpgEntity> _epg;
  @override
  List<EpgEntity> get epg {
    if (_epg is EqualUnmodifiableListView) return _epg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_epg);
  }

  @override
  @JsonKey(name: 'category_id')
  final int categoryId;

  @override
  String toString() {
    return 'TvGuideEntity(id: $id, nombre: $nombre, descripcion: $descripcion, numero: $numero, imagen: $imagen, adulto: $adulto, cdn: $cdn, epg: $epg, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvGuideEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.numero, numero) || other.numero == numero) &&
            (identical(other.imagen, imagen) || other.imagen == imagen) &&
            (identical(other.adulto, adulto) || other.adulto == adulto) &&
            (identical(other.cdn, cdn) || other.cdn == cdn) &&
            const DeepCollectionEquality().equals(other._epg, _epg) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nombre,
      descripcion,
      numero,
      imagen,
      adulto,
      cdn,
      const DeepCollectionEquality().hash(_epg),
      categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvGuideEntityImplCopyWith<_$TvGuideEntityImpl> get copyWith =>
      __$$TvGuideEntityImplCopyWithImpl<_$TvGuideEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvGuideEntityImplToJson(
      this,
    );
  }
}

abstract class _TvGuideEntity implements TvGuideEntity {
  const factory _TvGuideEntity(
          {@JsonKey(name: 'cn_id') required final int id,
          required final String nombre,
          required final String descripcion,
          required final int numero,
          required final String imagen,
          required final int adulto,
          required final int cdn,
          required final List<EpgEntity> epg,
          @JsonKey(name: 'category_id') required final int categoryId}) =
      _$TvGuideEntityImpl;

  factory _TvGuideEntity.fromJson(Map<String, dynamic> json) =
      _$TvGuideEntityImpl.fromJson;

  @override
  @JsonKey(name: 'cn_id')
  int get id;
  @override
  String get nombre;
  @override
  String get descripcion;
  @override
  int get numero;
  @override
  String get imagen;
  @override
  int get adulto;
  @override
  int get cdn;
  @override
  List<EpgEntity> get epg;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$TvGuideEntityImplCopyWith<_$TvGuideEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
