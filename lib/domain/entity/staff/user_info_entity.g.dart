// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoEntity _$UserInfoEntityFromJson(Map<String, dynamic> json) =>
    UserInfoEntity(
      userId: (json['userId'] as num?)?.toInt(),
      adOrgId: (json['adOrgId'] as num?)?.toInt(),
      adOrgName: json['adOrgName'] as String?,
      fullName: json['fullName'] as String?,
      aliasName: json['aliasName'] as String?,
      jobTile: json['jobTile'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      strDateOfBirth: json['strDateOfBirth'] as String?,
      strAddress: json['strAddress'] as String?,
      strCardNumber: json['strCardNumber'] as String?,
      strIdentification: json['strIdentification'] as String?,
      strEmail: json['strEmail'] as String?,
      sysOrgId: (json['sysOrgId'] as num?)?.toInt(),
      sysRoleId: (json['sysRoleId'] as num?)?.toInt(),
      hmRole: (json['hmRole'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      sysOrgName: json['sysOrgName'] as String?,
      listManagementVhrOrg: (json['listManagementVhrOrg'] as List<dynamic>?)
          ?.map((e) => ListChartPermissionElementEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      listAssistantVhrOrg: (json['listAssistantVhrOrg'] as List<dynamic>?)
          ?.map((e) => ListChartPermissionElementEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      listSecretaryOrg: (json['listSecretaryOrg'] as List<dynamic>?)
          ?.map((e) => SecretaryOrgEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      hmSpecializedOrgId: json['hmSpecializedOrgId'],
      pathDepart2: json['pathDepart2'] as String?,
      userLanguage: json['userLanguage'] as String?,
      listSecretaryVhrOrg: json['listSecretaryVhrOrg'] as List<dynamic>?,
      isSecrectaryVo2: json['isSecrectaryVo2'] as bool?,
      lstVhrOrgAll: (json['lstVhrOrgAll'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      orgPath: json['orgPath'] as String?,
      isDeault: (json['isDeault'] as num?)?.toInt(),
      listOrgPath: (json['listOrgPath'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isLeafGroup: json['isLeafGroup'] as bool?,
      listManagementVhrOrgIsDefault:
          (json['listManagementVhrOrgIsDefault'] as List<dynamic>?)
              ?.map((e) => ListChartPermissionElementEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      lstVhrOrgIsDefault: (json['lstVhrOrgIsDefault'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      sendTypeNotSend: (json['sendTypeNotSend'] as num?)?.toInt(),
      typeNotSend: (json['typeNotSend'] as num?)?.toInt(),
      sendFailReason: (json['sendFailReason'] as num?)?.toInt(),
      listOrgPersonReport: json['listOrgPersonReport'] as List<dynamic>?,
      manager: json['manager'] == null
          ? null
          : ManagerEntity.fromJson(json['manager'] as Map<String, dynamic>),
      tgd: json['tgd'] == null
          ? null
          : TgdEntity.fromJson(json['tgd'] as Map<String, dynamic>),
      listPoliticalAssistantOrg:
          json['listPoliticalAssistantOrg'] as List<dynamic>?,
      isMeetingManager: (json['isMeetingManager'] as num?)?.toInt(),
      listApproveCalDept: json['listApproveCalDept'] as List<dynamic>?,
      timeZone: json['timeZone'] as String?,
      place: json['place'] as String?,
      isAssiAproChange: json['isAssiAproChange'] as bool?,
      roleCode: json['roleCode'] as String?,
      isTranferAllDoc: (json['isTranferAllDoc'] as num?)?.toInt(),
      isVip: (json['isVip'] as num?)?.toInt(),
      urlService: json['urlService'] as String?,
      listChartPermission: (json['listChartPermission'] as List<dynamic>?)
          ?.map((e) => ListChartPermissionElementEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      userMySign: json['userMySign'] as String?,
      signType: (json['signType'] as num?)?.toInt(),
      permissionViewCommentSignatureTypes:
          (json['permissionViewCommentSignatureTypes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      activeSerials: (json['activeSerials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lstVhrOrgNotSecretary: (json['lstVhrOrgNotSecretary'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$UserInfoEntityToJson(UserInfoEntity instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'adOrgId': instance.adOrgId,
      'adOrgName': instance.adOrgName,
      'fullName': instance.fullName,
      'aliasName': instance.aliasName,
      'jobTile': instance.jobTile,
      'mobileNumber': instance.mobileNumber,
      'strDateOfBirth': instance.strDateOfBirth,
      'strAddress': instance.strAddress,
      'strCardNumber': instance.strCardNumber,
      'strIdentification': instance.strIdentification,
      'strEmail': instance.strEmail,
      'sysOrgId': instance.sysOrgId,
      'sysRoleId': instance.sysRoleId,
      'hmRole': instance.hmRole,
      'sysOrgName': instance.sysOrgName,
      'listManagementVhrOrg': instance.listManagementVhrOrg,
      'listAssistantVhrOrg': instance.listAssistantVhrOrg,
      'listSecretaryOrg': instance.listSecretaryOrg,
      'hmSpecializedOrgId': instance.hmSpecializedOrgId,
      'pathDepart2': instance.pathDepart2,
      'userLanguage': instance.userLanguage,
      'listSecretaryVhrOrg': instance.listSecretaryVhrOrg,
      'isSecrectaryVo2': instance.isSecrectaryVo2,
      'lstVhrOrgAll': instance.lstVhrOrgAll,
      'orgPath': instance.orgPath,
      'isDeault': instance.isDeault,
      'listOrgPath': instance.listOrgPath,
      'isLeafGroup': instance.isLeafGroup,
      'listManagementVhrOrgIsDefault': instance.listManagementVhrOrgIsDefault,
      'lstVhrOrgIsDefault': instance.lstVhrOrgIsDefault,
      'sendTypeNotSend': instance.sendTypeNotSend,
      'typeNotSend': instance.typeNotSend,
      'sendFailReason': instance.sendFailReason,
      'listOrgPersonReport': instance.listOrgPersonReport,
      'manager': instance.manager,
      'tgd': instance.tgd,
      'listPoliticalAssistantOrg': instance.listPoliticalAssistantOrg,
      'isMeetingManager': instance.isMeetingManager,
      'listApproveCalDept': instance.listApproveCalDept,
      'timeZone': instance.timeZone,
      'place': instance.place,
      'isAssiAproChange': instance.isAssiAproChange,
      'roleCode': instance.roleCode,
      'isTranferAllDoc': instance.isTranferAllDoc,
      'isVip': instance.isVip,
      'urlService': instance.urlService,
      'listChartPermission': instance.listChartPermission,
      'userMySign': instance.userMySign,
      'signType': instance.signType,
      'permissionViewCommentSignatureTypes':
          instance.permissionViewCommentSignatureTypes,
      'activeSerials': instance.activeSerials,
      'lstVhrOrgNotSecretary': instance.lstVhrOrgNotSecretary,
    };

ListChartPermissionElementEntity _$ListChartPermissionElementEntityFromJson(
        Map<String, dynamic> json) =>
    ListChartPermissionElementEntity(
      sysOrganizationId: (json['sysOrganizationId'] as num?)?.toInt(),
      name: json['name'] as String?,
      isActive: (json['isActive'] as num?)?.toInt(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$ListChartPermissionElementEntityToJson(
        ListChartPermissionElementEntity instance) =>
    <String, dynamic>{
      'sysOrganizationId': instance.sysOrganizationId,
      'name': instance.name,
      'isActive': instance.isActive,
      'path': instance.path,
    };

ManagerEntity _$ManagerEntityFromJson(Map<String, dynamic> json) =>
    ManagerEntity(
      employeeId: (json['employeeId'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$ManagerEntityToJson(ManagerEntity instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'fullName': instance.fullName,
    };

TgdEntity _$TgdEntityFromJson(Map<String, dynamic> json) => TgdEntity(
      employeeId: (json['employeeId'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      position: json['position'] as String?,
      employeeCode: json['employeeCode'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$TgdEntityToJson(TgdEntity instance) => <String, dynamic>{
      'employeeId': instance.employeeId,
      'fullName': instance.fullName,
      'position': instance.position,
      'employeeCode': instance.employeeCode,
      'email': instance.email,
    };

SecretaryOrgEntity _$SecretaryOrgEntityFromJson(Map<String, dynamic> json) =>
    SecretaryOrgEntity(
      sysOrganizationId: (json['sysOrganizationId'] as num?)?.toInt(),
      name: json['name'] as String?,
      path: json['path'] as String?,
      pathName: json['pathName'] as String?,
      isActive: (json['isActive'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SecretaryOrgEntityToJson(SecretaryOrgEntity instance) =>
    <String, dynamic>{
      'sysOrganizationId': instance.sysOrganizationId,
      'name': instance.name,
      'path': instance.path,
      'pathName': instance.pathName,
      'isActive': instance.isActive,
    };
