import 'package:dio/dio.dart';
import 'package:v_office_base/core/networking/model/base_request_model.dart';
import 'package:v_office_base/data/service/staff/staff_service.dart';
import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';
import 'package:v_office_base/domain/repository/staff/staff_repository.dart';

class StaffRepositoryImpl extends StaffRepository {
  final StaffService staffService;

  StaffRepositoryImpl({
    required this.staffService,
  });

  @override
  Future<UserInfoEntity?> getUserInfo() async {
    try {
      final response = await staffService.getUserInfo(BaseRequestModel());

      return response.result.data.toUserInfoEntity;
    } on DioException catch (_) {
      rethrow;
    } catch (_) {}
    return null;
  }
}
