// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    LoginRequestModel(
      username: json['username'] as String,
      password: json['password'] as String,
      deviceName: json['deviceName'] as String? ?? "Android 14 VOffice 3.6.9",
    );

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'password': instance.password,
      'username': instance.username,
    };
