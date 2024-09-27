// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:v_office_base/data/dto/auth/base_role_dto.dart';

class BaseRoleEntity {
  final String? employeeCode;
  final String? sysRoleId;
  final String? sysOrganizationId;
  final String? position;
  final String? orgName;
  final String? orgPathName;
  final String? roleName;

  BaseRoleEntity({
    this.employeeCode,
    this.sysRoleId,
    this.sysOrganizationId,
    this.position,
    this.orgName,
    this.orgPathName,
    this.roleName,
  });

  BaseRoleEntity copyWith({
    String? employeeCode,
    String? sysRoleId,
    String? sysOrganizationId,
    String? position,
    String? orgName,
    String? orgPathName,
    String? roleName,
  }) {
    return BaseRoleEntity(
      employeeCode: employeeCode ?? this.employeeCode,
      sysRoleId: sysRoleId ?? this.sysRoleId,
      sysOrganizationId: sysOrganizationId ?? this.sysOrganizationId,
      position: position ?? this.position,
      orgName: orgName ?? this.orgName,
      orgPathName: orgPathName ?? this.orgPathName,
      roleName: roleName ?? this.roleName,
    );
  }
}

extension BaseRoleEntityEx on BaseRolesDto {
  BaseRoleEntity get toBaseRoleEntity => BaseRoleEntity(
      employeeCode: employeeCode,
      orgName: orgName,
      orgPathName: orgPathName,
      position: position,
      roleName: roleName,
      sysOrganizationId: sysOrganizationId,
      sysRoleId: sysRoleId);
}
