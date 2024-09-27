// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_privilege_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPrivilegeRequestModel _$GetPrivilegeRequestModelFromJson(
        Map<String, dynamic> json) =>
    GetPrivilegeRequestModel(
      menuId: (json['menuId'] as num).toInt(),
      deviceStatus: (json['deviceStatus'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$GetPrivilegeRequestModelToJson(
        GetPrivilegeRequestModel instance) =>
    <String, dynamic>{
      'menuId': instance.menuId,
      'deviceStatus': instance.deviceStatus,
    };
