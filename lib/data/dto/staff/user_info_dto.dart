// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_dto.g.dart';

@JsonSerializable()
class UserInfoDto {
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
  List<ListChartPermissionElement>? listManagementVhrOrg;
  List<ListChartPermissionElement>? listAssistantVhrOrg;
  List<SecretaryOrg>? listSecretaryOrg;
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
  List<ListChartPermissionElement>? listManagementVhrOrgIsDefault;
  List<int>? lstVhrOrgIsDefault;
  int? sendTypeNotSend;
  int? typeNotSend;
  int? sendFailReason;
  List<dynamic>? listOrgPersonReport;
  Manager? manager;
  Tgd? tgd;
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
  List<ListChartPermissionElement>? listChartPermission;
  String? userMySign;
  int? signType;
  List<int>? permissionViewCommentSignatureTypes;
  List<String>? activeSerials;
  List<int>? lstVhrOrgNotSecretary;

  UserInfoDto({
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
    return _$UserInfoDtoToJson(this);
  }

  factory UserInfoDto.fromJson(Map<String, dynamic> json) {
    return _$UserInfoDtoFromJson(json);
  }

  UserInfoDto copyWith({
    int? userId,
    int? adOrgId,
    String? adOrgName,
    String? fullName,
    String? aliasName,
    String? jobTile,
    String? mobileNumber,
    String? strDateOfBirth,
    String? strAddress,
    String? strCardNumber,
    String? strIdentification,
    String? strEmail,
    int? sysOrgId,
    int? sysRoleId,
    Map<String, String>? hmRole,
    String? sysOrgName,
    List<ListChartPermissionElement>? listManagementVhrOrg,
    List<ListChartPermissionElement>? listAssistantVhrOrg,
    List<SecretaryOrg>? listSecretaryOrg,
    dynamic? hmSpecializedOrgId,
    String? pathDepart2,
    String? userLanguage,
    List<dynamic>? listSecretaryVhrOrg,
    bool? isSecrectaryVo2,
    List<int>? lstVhrOrgAll,
    String? orgPath,
    int? isDeault,
    List<String>? listOrgPath,
    bool? isLeafGroup,
    List<ListChartPermissionElement>? listManagementVhrOrgIsDefault,
    List<int>? lstVhrOrgIsDefault,
    int? sendTypeNotSend,
    int? typeNotSend,
    int? sendFailReason,
    List<dynamic>? listOrgPersonReport,
    Manager? manager,
    Tgd? tgd,
    List<dynamic>? listPoliticalAssistantOrg,
    int? isMeetingManager,
    List<dynamic>? listApproveCalDept,
    String? timeZone,
    String? place,
    bool? isAssiAproChange,
    String? roleCode,
    int? isTranferAllDoc,
    int? isVip,
    String? urlService,
    List<ListChartPermissionElement>? listChartPermission,
    String? userMySign,
    int? signType,
    List<int>? permissionViewCommentSignatureTypes,
    List<String>? activeSerials,
    List<int>? lstVhrOrgNotSecretary,
  }) {
    return UserInfoDto(
      userId: userId ?? this.userId,
      adOrgId: adOrgId ?? this.adOrgId,
      adOrgName: adOrgName ?? this.adOrgName,
      fullName: fullName ?? this.fullName,
      aliasName: aliasName ?? this.aliasName,
      jobTile: jobTile ?? this.jobTile,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      strDateOfBirth: strDateOfBirth ?? this.strDateOfBirth,
      strAddress: strAddress ?? this.strAddress,
      strCardNumber: strCardNumber ?? this.strCardNumber,
      strIdentification: strIdentification ?? this.strIdentification,
      strEmail: strEmail ?? this.strEmail,
      sysOrgId: sysOrgId ?? this.sysOrgId,
      sysRoleId: sysRoleId ?? this.sysRoleId,
      hmRole: hmRole ?? this.hmRole,
      sysOrgName: sysOrgName ?? this.sysOrgName,
      listManagementVhrOrg: listManagementVhrOrg ?? this.listManagementVhrOrg,
      listAssistantVhrOrg: listAssistantVhrOrg ?? this.listAssistantVhrOrg,
      listSecretaryOrg: listSecretaryOrg ?? this.listSecretaryOrg,
      hmSpecializedOrgId: hmSpecializedOrgId ?? this.hmSpecializedOrgId,
      pathDepart2: pathDepart2 ?? this.pathDepart2,
      userLanguage: userLanguage ?? this.userLanguage,
      listSecretaryVhrOrg: listSecretaryVhrOrg ?? this.listSecretaryVhrOrg,
      isSecrectaryVo2: isSecrectaryVo2 ?? this.isSecrectaryVo2,
      lstVhrOrgAll: lstVhrOrgAll ?? this.lstVhrOrgAll,
      orgPath: orgPath ?? this.orgPath,
      isDeault: isDeault ?? this.isDeault,
      listOrgPath: listOrgPath ?? this.listOrgPath,
      isLeafGroup: isLeafGroup ?? this.isLeafGroup,
      listManagementVhrOrgIsDefault:
          listManagementVhrOrgIsDefault ?? this.listManagementVhrOrgIsDefault,
      lstVhrOrgIsDefault: lstVhrOrgIsDefault ?? this.lstVhrOrgIsDefault,
      sendTypeNotSend: sendTypeNotSend ?? this.sendTypeNotSend,
      typeNotSend: typeNotSend ?? this.typeNotSend,
      sendFailReason: sendFailReason ?? this.sendFailReason,
      listOrgPersonReport: listOrgPersonReport ?? this.listOrgPersonReport,
      manager: manager ?? this.manager,
      tgd: tgd ?? this.tgd,
      listPoliticalAssistantOrg:
          listPoliticalAssistantOrg ?? this.listPoliticalAssistantOrg,
      isMeetingManager: isMeetingManager ?? this.isMeetingManager,
      listApproveCalDept: listApproveCalDept ?? this.listApproveCalDept,
      timeZone: timeZone ?? this.timeZone,
      place: place ?? this.place,
      isAssiAproChange: isAssiAproChange ?? this.isAssiAproChange,
      roleCode: roleCode ?? this.roleCode,
      isTranferAllDoc: isTranferAllDoc ?? this.isTranferAllDoc,
      isVip: isVip ?? this.isVip,
      urlService: urlService ?? this.urlService,
      listChartPermission: listChartPermission ?? this.listChartPermission,
      userMySign: userMySign ?? this.userMySign,
      signType: signType ?? this.signType,
      permissionViewCommentSignatureTypes:
          permissionViewCommentSignatureTypes ??
              this.permissionViewCommentSignatureTypes,
      activeSerials: activeSerials ?? this.activeSerials,
      lstVhrOrgNotSecretary:
          lstVhrOrgNotSecretary ?? this.lstVhrOrgNotSecretary,
    );
  }
}

@JsonSerializable()
class ListChartPermissionElement {
  int? sysOrganizationId;
  String? name;
  int? isActive;
  String? path;

  ListChartPermissionElement({
    this.sysOrganizationId,
    this.name,
    this.isActive,
    this.path,
  });

  Map<String, dynamic> toJson() {
    return _$ListChartPermissionElementToJson(this);
  }

  factory ListChartPermissionElement.fromJson(Map<String, dynamic> json) {
    return _$ListChartPermissionElementFromJson(json);
  }
}

@JsonSerializable()
class Manager {
  int? employeeId;
  String? fullName;

  Manager({
    this.employeeId,
    this.fullName,
  });

  Map<String, dynamic> toJson() {
    return _$ManagerToJson(this);
  }

  factory Manager.fromJson(Map<String, dynamic> json) {
    return _$ManagerFromJson(json);
  }
}

@JsonSerializable()
class Tgd {
  int? employeeId;
  String? fullName;
  String? position;
  String? employeeCode;
  String? email;

  Tgd({
    this.employeeId,
    this.fullName,
    this.position,
    this.employeeCode,
    this.email,
  });

  Map<String, dynamic> toJson() {
    return _$TgdToJson(this);
  }

  factory Tgd.fromJson(Map<String, dynamic> json) {
    return _$TgdFromJson(json);
  }
}

@JsonSerializable()
class SecretaryOrg {
  final int? sysOrganizationId;
  final String? name;
  final String? path;
  final String? pathName;
  final int? isActive;

  SecretaryOrg({
    this.sysOrganizationId,
    this.name,
    this.path,
    this.pathName,
    this.isActive,
  });

  Map<String, dynamic> toJson() {
    return _$SecretaryOrgToJson(this);
  }

  factory SecretaryOrg.fromJson(Map<String, dynamic> json) {
    return _$SecretaryOrgFromJson(json);
  }
}
