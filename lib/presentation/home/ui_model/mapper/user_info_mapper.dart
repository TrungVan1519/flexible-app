import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';
import 'package:v_office_base/presentation/home/ui_model/user_info_model.dart';

extension UserInfoEntityEx on UserInfoEntity {
  UserInfoModel get toUIModel => UserInfoModel(userInfoEntity: this);
}
