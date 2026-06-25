// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
  int get code;
  int get fecha;
  User get info;
  @JsonKey(name: 'default')
  LoginInfo get loginInfo;
  @JsonKey(name: 'googlevideos')
  List<Category> get categories;
  List<int> get premiumsallowed;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      _$LoginDtoCopyWithImpl<LoginDto>(this as LoginDto, _$identity);

  /// Serializes this LoginDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.loginInfo, loginInfo) ||
                other.loginInfo == loginInfo) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.premiumsallowed, premiumsallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      fecha,
      info,
      loginInfo,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(premiumsallowed));

  @override
  String toString() {
    return 'LoginDto(code: $code, fecha: $fecha, info: $info, loginInfo: $loginInfo, categories: $categories, premiumsallowed: $premiumsallowed)';
  }
}

/// @nodoc
abstract mixin class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) _then) =
      _$LoginDtoCopyWithImpl;
  @useResult
  $Res call(
      {int code,
      int fecha,
      User info,
      @JsonKey(name: 'default') LoginInfo loginInfo,
      @JsonKey(name: 'googlevideos') List<Category> categories,
      List<int> premiumsallowed});

  $UserCopyWith<$Res> get info;
  $LoginInfoCopyWith<$Res> get loginInfo;
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res> implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._self, this._then);

  final LoginDto _self;
  final $Res Function(LoginDto) _then;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? fecha = null,
    Object? info = null,
    Object? loginInfo = null,
    Object? categories = null,
    Object? premiumsallowed = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      fecha: null == fecha
          ? _self.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as int,
      info: null == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as User,
      loginInfo: null == loginInfo
          ? _self.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as LoginInfo,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      premiumsallowed: null == premiumsallowed
          ? _self.premiumsallowed
          : premiumsallowed // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get info {
    return $UserCopyWith<$Res>(_self.info, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginInfoCopyWith<$Res> get loginInfo {
    return $LoginInfoCopyWith<$Res>(_self.loginInfo, (value) {
      return _then(_self.copyWith(loginInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LoginDto].
extension LoginDtoPatterns on LoginDto {
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
    TResult Function(
            int code,
            int fecha,
            User info,
            @JsonKey(name: 'default') LoginInfo loginInfo,
            @JsonKey(name: 'googlevideos') List<Category> categories,
            List<int> premiumsallowed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.code, _that.fecha, _that.info, _that.loginInfo,
            _that.categories, _that.premiumsallowed);
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
            int code,
            int fecha,
            User info,
            @JsonKey(name: 'default') LoginInfo loginInfo,
            @JsonKey(name: 'googlevideos') List<Category> categories,
            List<int> premiumsallowed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(_that.code, _that.fecha, _that.info, _that.loginInfo,
            _that.categories, _that.premiumsallowed);
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
            int code,
            int fecha,
            User info,
            @JsonKey(name: 'default') LoginInfo loginInfo,
            @JsonKey(name: 'googlevideos') List<Category> categories,
            List<int> premiumsallowed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.code, _that.fecha, _that.info, _that.loginInfo,
            _that.categories, _that.premiumsallowed);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Category implements LoginDto {
  const _Category(
      {required this.code,
      required this.fecha,
      required this.info,
      @JsonKey(name: 'default') required this.loginInfo,
      @JsonKey(name: 'googlevideos') required final List<Category> categories,
      required final List<int> premiumsallowed})
      : _categories = categories,
        _premiumsallowed = premiumsallowed;
  factory _Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @override
  final int code;
  @override
  final int fecha;
  @override
  final User info;
  @override
  @JsonKey(name: 'default')
  final LoginInfo loginInfo;
  final List<Category> _categories;
  @override
  @JsonKey(name: 'googlevideos')
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<int> _premiumsallowed;
  @override
  List<int> get premiumsallowed {
    if (_premiumsallowed is EqualUnmodifiableListView) return _premiumsallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_premiumsallowed);
  }

  /// Create a copy of LoginDto
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.loginInfo, loginInfo) ||
                other.loginInfo == loginInfo) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._premiumsallowed, _premiumsallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      fecha,
      info,
      loginInfo,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_premiumsallowed));

  @override
  String toString() {
    return 'LoginDto(code: $code, fecha: $fecha, info: $info, loginInfo: $loginInfo, categories: $categories, premiumsallowed: $premiumsallowed)';
  }
}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res>
    implements $LoginDtoCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) =
      __$CategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int code,
      int fecha,
      User info,
      @JsonKey(name: 'default') LoginInfo loginInfo,
      @JsonKey(name: 'googlevideos') List<Category> categories,
      List<int> premiumsallowed});

  @override
  $UserCopyWith<$Res> get info;
  @override
  $LoginInfoCopyWith<$Res> get loginInfo;
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? fecha = null,
    Object? info = null,
    Object? loginInfo = null,
    Object? categories = null,
    Object? premiumsallowed = null,
  }) {
    return _then(_Category(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      fecha: null == fecha
          ? _self.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as int,
      info: null == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as User,
      loginInfo: null == loginInfo
          ? _self.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as LoginInfo,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      premiumsallowed: null == premiumsallowed
          ? _self._premiumsallowed
          : premiumsallowed // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get info {
    return $UserCopyWith<$Res>(_self.info, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginInfoCopyWith<$Res> get loginInfo {
    return $LoginInfoCopyWith<$Res>(_self.loginInfo, (value) {
      return _then(_self.copyWith(loginInfo: value));
    });
  }
}

// dart format on
