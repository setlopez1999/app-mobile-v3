// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterUserDto {
  String get firstName;
  String get lastName;
  String get dni;
  String get phoneNumber;
  String get email;

  /// Create a copy of RegisterUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterUserDtoCopyWith<RegisterUserDto> get copyWith =>
      _$RegisterUserDtoCopyWithImpl<RegisterUserDto>(
          this as RegisterUserDto, _$identity);

  /// Serializes this RegisterUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterUserDto &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dni, dni) || other.dni == dni) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, dni, phoneNumber, email);

  @override
  String toString() {
    return 'RegisterUserDto(firstName: $firstName, lastName: $lastName, dni: $dni, phoneNumber: $phoneNumber, email: $email)';
  }
}

/// @nodoc
abstract mixin class $RegisterUserDtoCopyWith<$Res> {
  factory $RegisterUserDtoCopyWith(
          RegisterUserDto value, $Res Function(RegisterUserDto) _then) =
      _$RegisterUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String dni,
      String phoneNumber,
      String email});
}

/// @nodoc
class _$RegisterUserDtoCopyWithImpl<$Res>
    implements $RegisterUserDtoCopyWith<$Res> {
  _$RegisterUserDtoCopyWithImpl(this._self, this._then);

  final RegisterUserDto _self;
  final $Res Function(RegisterUserDto) _then;

  /// Create a copy of RegisterUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? dni = null,
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dni: null == dni
          ? _self.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterUserDto].
extension RegisterUserDtoPatterns on RegisterUserDto {
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
    TResult Function(_RegisterUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterUserDto() when $default != null:
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
    TResult Function(_RegisterUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserDto():
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
    TResult? Function(_RegisterUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserDto() when $default != null:
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
    TResult Function(String firstName, String lastName, String dni,
            String phoneNumber, String email)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterUserDto() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.dni,
            _that.phoneNumber, _that.email);
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
    TResult Function(String firstName, String lastName, String dni,
            String phoneNumber, String email)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserDto():
        return $default(_that.firstName, _that.lastName, _that.dni,
            _that.phoneNumber, _that.email);
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
    TResult? Function(String firstName, String lastName, String dni,
            String phoneNumber, String email)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserDto() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.dni,
            _that.phoneNumber, _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RegisterUserDto implements RegisterUserDto {
  const _RegisterUserDto(
      {required this.firstName,
      required this.lastName,
      required this.dni,
      required this.phoneNumber,
      required this.email});
  factory _RegisterUserDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserDtoFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String dni;
  @override
  final String phoneNumber;
  @override
  final String email;

  /// Create a copy of RegisterUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterUserDtoCopyWith<_RegisterUserDto> get copyWith =>
      __$RegisterUserDtoCopyWithImpl<_RegisterUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterUserDto &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dni, dni) || other.dni == dni) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, dni, phoneNumber, email);

  @override
  String toString() {
    return 'RegisterUserDto(firstName: $firstName, lastName: $lastName, dni: $dni, phoneNumber: $phoneNumber, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$RegisterUserDtoCopyWith<$Res>
    implements $RegisterUserDtoCopyWith<$Res> {
  factory _$RegisterUserDtoCopyWith(
          _RegisterUserDto value, $Res Function(_RegisterUserDto) _then) =
      __$RegisterUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String dni,
      String phoneNumber,
      String email});
}

/// @nodoc
class __$RegisterUserDtoCopyWithImpl<$Res>
    implements _$RegisterUserDtoCopyWith<$Res> {
  __$RegisterUserDtoCopyWithImpl(this._self, this._then);

  final _RegisterUserDto _self;
  final $Res Function(_RegisterUserDto) _then;

  /// Create a copy of RegisterUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? dni = null,
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(_RegisterUserDto(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dni: null == dni
          ? _self.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
