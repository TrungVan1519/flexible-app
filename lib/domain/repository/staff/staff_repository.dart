import 'package:v_office_base/core/networking/model/base_request_model.dart';
import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';

abstract class StaffRepository {
  Future<UserInfoEntity?> getUserInfo();
}
