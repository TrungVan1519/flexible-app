// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRequestModel _$BaseRequestModelFromJson(Map<String, dynamic> json) =>
    BaseRequestModel(
      deviceName: json['deviceName'] as String? ?? "Android 14 VOffice 3.6.9",
      isSecurity: json['isSecurity'] as bool? ?? false,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$BaseRequestModelToJson(BaseRequestModel instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'isSecurity': instance.isSecurity,
      'data': instance.data,
    };
