import 'package:json_annotation/json_annotation.dart';

part 'base_role_dto.g.dart';

@JsonSerializable()
class BaseRolesDto {
  final String? employeeCode;
  final String? sysRoleId;
  final String? sysOrganizationId;
  final String? position;
  final String? orgName;
  final String? orgPathName;
  final String? roleName;

  BaseRolesDto({
    this.employeeCode,
    this.sysRoleId,
    this.sysOrganizationId,
    this.position,
    this.orgName,
    this.orgPathName,
    this.roleName,
  });

  @override
  Map<String, dynamic> toJson() => _$BaseRolesDtoToJson(this);

  factory BaseRolesDto.fromJson(Map<String, dynamic> json) =>
      _$BaseRolesDtoFromJson(json);
}
