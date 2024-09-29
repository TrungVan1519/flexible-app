// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:v_office_base/base/extension/string.dart';
import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';

class UserInfoModel {
  final UserInfoEntity userInfoEntity;
  UserInfoModel({
    required this.userInfoEntity,
  });

  String get displayName => userInfoEntity.aliasName.orDash;

  String get displayJobTitle => userInfoEntity.jobTile.orDash;
}
