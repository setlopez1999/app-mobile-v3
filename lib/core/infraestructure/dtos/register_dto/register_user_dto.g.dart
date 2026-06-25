// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterUserDto _$RegisterUserDtoFromJson(Map<String, dynamic> json) =>
    _RegisterUserDto(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dni: json['dni'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$RegisterUserDtoToJson(_RegisterUserDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dni': instance.dni,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
