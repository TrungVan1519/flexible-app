// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_role_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRolesDto _$BaseRolesDtoFromJson(Map<String, dynamic> json) => BaseRolesDto(
      employeeCode: json['employeeCode'] as String?,
      sysRoleId: json['sysRoleId'] as String?,
      sysOrganizationId: json['sysOrganizationId'] as String?,
      position: json['position'] as String?,
      orgName: json['orgName'] as String?,
      orgPathName: json['orgPathName'] as String?,
      roleName: json['roleName'] as String?,
    );

Map<String, dynamic> _$BaseRolesDtoToJson(BaseRolesDto instance) =>
    <String, dynamic>{
      'employeeCode': instance.employeeCode,
      'sysRoleId': instance.sysRoleId,
      'sysOrganizationId': instance.sysOrganizationId,
      'position': instance.position,
      'orgName': instance.orgName,
      'orgPathName': instance.orgPathName,
      'roleName': instance.roleName,
    };
