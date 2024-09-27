// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticateLoginDto _$AuthenticateLoginDtoFromJson(
        Map<String, dynamic> json) =>
    AuthenticateLoginDto(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$AuthenticateLoginDtoToJson(
        AuthenticateLoginDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
