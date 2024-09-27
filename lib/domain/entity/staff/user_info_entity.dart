import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_office_base/data/dto/staff/user_info_dto.dart';
part 'user_info_entity.g.dart';

@JsonSerializable()
class UserInfoEntity {
  int? userId;
  int? adOrgId;
  String? adOrgName;
  String? fullName;
  String? aliasName;
  String? jobTile;
  String? mobileNumber;
  String? strDateOfBirth;
  String? strAddress;
  String? strCardNumber;
  String? strIdentification;
  String? strEmail;
  int? sysOrgId;
  int? sysRoleId;
  Map<String, String>? hmRole;
  String? sysOrgName;
  List<ListChartPermissionElementEntity>? listManagementVhrOrg;
  List<ListChartPermissionElementEntity>? listAssistantVhrOrg;
  List<SecretaryOrgEntity>? listSecretaryOrg;
  dynamic hmSpecializedOrgId;
  String? pathDepart2;
  String? userLanguage;
  List<dynamic>? listSecretaryVhrOrg;
  bool? isSecrectaryVo2;
  List<int>? lstVhrOrgAll;
  String? orgPath;
  int? isDeault;
  List<String>? listOrgPath;
  bool? isLeafGroup;
  List<ListChartPermissionElementEntity>? listManagementVhrOrgIsDefault;
  List<int>? lstVhrOrgIsDefault;
  int? sendTypeNotSend;
  int? typeNotSend;
  int? sendFailReason;
  List<dynamic>? listOrgPersonReport;
  ManagerEntity? manager;
  TgdEntity? tgd;
  List<dynamic>? listPoliticalAssistantOrg;
  int? isMeetingManager;
  List<dynamic>? listApproveCalDept;
  String? timeZone;
  String? place;
  bool? isAssiAproChange;
  String? roleCode;
  int? isTranferAllDoc;
  int? isVip;
  String? urlService;
  List<ListChartPermissionElementEntity>? listChartPermission;
  String? userMySign;
  int? signType;
  List<int>? permissionViewCommentSignatureTypes;
  List<String>? activeSerials;
  List<int>? lstVhrOrgNotSecretary;

  UserInfoEntity({
    this.userId,
    this.adOrgId,
    this.adOrgName,
    this.fullName,
    this.aliasName,
    this.jobTile,
    this.mobileNumber,
    this.strDateOfBirth,
    this.strAddress,
    this.strCardNumber,
    this.strIdentification,
    this.strEmail,
    this.sysOrgId,
    this.sysRoleId,
    this.hmRole,
    this.sysOrgName,
    this.listManagementVhrOrg,
    this.listAssistantVhrOrg,
    this.listSecretaryOrg,
    this.hmSpecializedOrgId,
    this.pathDepart2,
    this.userLanguage,
    this.listSecretaryVhrOrg,
    this.isSecrectaryVo2,
    this.lstVhrOrgAll,
    this.orgPath,
    this.isDeault,
    this.listOrgPath,
    this.isLeafGroup,
    this.listManagementVhrOrgIsDefault,
    this.lstVhrOrgIsDefault,
    this.sendTypeNotSend,
    this.typeNotSend,
    this.sendFailReason,
    this.listOrgPersonReport,
    this.manager,
    this.tgd,
    this.listPoliticalAssistantOrg,
    this.isMeetingManager,
    this.listApproveCalDept,
    this.timeZone,
    this.place,
    this.isAssiAproChange,
    this.roleCode,
    this.isTranferAllDoc,
    this.isVip,
    this.urlService,
    this.listChartPermission,
    this.userMySign,
    this.signType,
    this.permissionViewCommentSignatureTypes,
    this.activeSerials,
    this.lstVhrOrgNotSecretary,
  });

  Map<String, dynamic> toJson() {
    return _$UserInfoEntityToJson(this);
  }

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) {
    return _$UserInfoEntityFromJson(json);
  }
}

@JsonSerializable()
class ListChartPermissionElementEntity {
  int? sysOrganizationId;
  String? name;
  int? isActive;
  String? path;

  ListChartPermissionElementEntity({
    this.sysOrganizationId,
    this.name,
    this.isActive,
    this.path,
  });

  Map<String, dynamic> toJson() {
    return _$ListChartPermissionElementEntityToJson(this);
  }

  factory ListChartPermissionElementEntity.fromJson(Map<String, dynamic> json) {
    return _$ListChartPermissionElementEntityFromJson(json);
  }
}

@JsonSerializable()
class ManagerEntity {
  int? employeeId;
  String? fullName;

  ManagerEntity({
    this.employeeId,
    this.fullName,
  });

  Map<String, dynamic> toJson() {
    return _$ManagerEntityToJson(this);
  }

  factory ManagerEntity.fromJson(Map<String, dynamic> json) {
    return _$ManagerEntityFromJson(json);
  }
}

@JsonSerializable()
class TgdEntity {
  int? employeeId;
  String? fullName;
  String? position;
  String? employeeCode;
  String? email;

  TgdEntity({
    this.employeeId,
    this.fullName,
    this.position,
    this.employeeCode,
    this.email,
  });

  Map<String, dynamic> toJson() {
    return _$TgdEntityToJson(this);
  }

  factory TgdEntity.fromJson(Map<String, dynamic> json) {
    return _$TgdEntityFromJson(json);
  }
}

@JsonSerializable()
class SecretaryOrgEntity {
  final int? sysOrganizationId;
  final String? name;
  final String? path;
  final String? pathName;
  final int? isActive;

  SecretaryOrgEntity({
    this.sysOrganizationId,
    this.name,
    this.path,
    this.pathName,
    this.isActive,
  });

  Map<String, dynamic> toJson() {
    return _$SecretaryOrgEntityToJson(this);
  }

  factory SecretaryOrgEntity.fromJson(Map<String, dynamic> json) {
    return _$SecretaryOrgEntityFromJson(json);
  }
}

extension SecretaryOrgEntityEx on SecretaryOrg {
  SecretaryOrgEntity get toSecretaryOrgEntity => SecretaryOrgEntity(
      isActive: isActive,
      name: name,
      path: path,
      pathName: pathName,
      sysOrganizationId: sysOrganizationId);
}

extension TgdEntityEx on Tgd {
  TgdEntity get toTgdEntity => TgdEntity(
        email: email,
        employeeCode: employeeCode,
        employeeId: employeeId,
        fullName: fullName,
        position: position,
      );
}

extension ManagerEntityEx on Manager {
  ManagerEntity get toManager => ManagerEntity(
        employeeId: employeeId,
        fullName: fullName,
      );
}

extension ListChartPermissionElementEntitEx on ListChartPermissionElement {
  ListChartPermissionElementEntity get toListChartPermissionElementEntity =>
      ListChartPermissionElementEntity(
          isActive: isActive,
          name: name,
          path: path,
          sysOrganizationId: sysOrganizationId);
}

extension UserInfoEntityEx on UserInfoDto {
  UserInfoEntity get toUserInfoEntity => UserInfoEntity(
        userId: userId ?? userId,
        adOrgId: adOrgId ?? adOrgId,
        adOrgName: adOrgName ?? adOrgName,
        fullName: fullName ?? fullName,
        aliasName: aliasName ?? aliasName,
        jobTile: jobTile ?? jobTile,
        mobileNumber: mobileNumber ?? mobileNumber,
        strDateOfBirth: strDateOfBirth ?? strDateOfBirth,
        strAddress: strAddress ?? strAddress,
        strCardNumber: strCardNumber ?? strCardNumber,
        strIdentification: strIdentification ?? strIdentification,
        strEmail: strEmail ?? strEmail,
        sysOrgId: sysOrgId ?? sysOrgId,
        sysRoleId: sysRoleId ?? sysRoleId,
        hmRole: hmRole ?? hmRole,
        sysOrgName: sysOrgName ?? sysOrgName,
        listManagementVhrOrg: listManagementVhrOrg
            ?.map((e) => e.toListChartPermissionElementEntity)
            .toList(),
        listAssistantVhrOrg: listAssistantVhrOrg
            ?.map((e) => e.toListChartPermissionElementEntity)
            .toList(),
        listSecretaryOrg:
            listSecretaryOrg?.map((e) => e.toSecretaryOrgEntity).toList(),
        hmSpecializedOrgId: hmSpecializedOrgId ?? hmSpecializedOrgId,
        pathDepart2: pathDepart2 ?? pathDepart2,
        userLanguage: userLanguage ?? userLanguage,
        listSecretaryVhrOrg: listSecretaryVhrOrg ?? listSecretaryVhrOrg,
        isSecrectaryVo2: isSecrectaryVo2 ?? isSecrectaryVo2,
        lstVhrOrgAll: lstVhrOrgAll ?? lstVhrOrgAll,
        orgPath: orgPath ?? orgPath,
        isDeault: isDeault ?? isDeault,
        listOrgPath: listOrgPath ?? listOrgPath,
        isLeafGroup: isLeafGroup ?? isLeafGroup,
        listManagementVhrOrgIsDefault: listManagementVhrOrgIsDefault
            ?.map((e) => e.toListChartPermissionElementEntity)
            .toList(),
        lstVhrOrgIsDefault: lstVhrOrgIsDefault ?? lstVhrOrgIsDefault,
        sendTypeNotSend: sendTypeNotSend ?? sendTypeNotSend,
        typeNotSend: typeNotSend ?? typeNotSend,
        sendFailReason: sendFailReason ?? sendFailReason,
        listOrgPersonReport: listOrgPersonReport ?? listOrgPersonReport,
        manager: manager?.toManager,
        tgd: tgd?.toTgdEntity,
        listPoliticalAssistantOrg:
            listPoliticalAssistantOrg ?? listPoliticalAssistantOrg,
        isMeetingManager: isMeetingManager ?? isMeetingManager,
        listApproveCalDept: listApproveCalDept ?? listApproveCalDept,
        timeZone: timeZone ?? timeZone,
        place: place ?? place,
        isAssiAproChange: isAssiAproChange ?? isAssiAproChange,
        roleCode: roleCode ?? roleCode,
        isTranferAllDoc: isTranferAllDoc ?? isTranferAllDoc,
        isVip: isVip ?? isVip,
        urlService: urlService ?? urlService,
        listChartPermission: listChartPermission
            ?.map((e) => e.toListChartPermissionElementEntity)
            .toList(),
        userMySign: userMySign ?? userMySign,
        signType: signType ?? signType,
        permissionViewCommentSignatureTypes:
            permissionViewCommentSignatureTypes ??
                permissionViewCommentSignatureTypes,
        activeSerials: activeSerials ?? activeSerials,
        lstVhrOrgNotSecretary: lstVhrOrgNotSecretary ?? lstVhrOrgNotSecretary,
      );
}
