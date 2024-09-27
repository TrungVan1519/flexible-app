import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:v_office_base/base/constant/service_const.dart';
import 'package:v_office_base/core/networking/model/base_request_model.dart';
import 'package:v_office_base/core/networking/model/base_response.dart';
import 'package:v_office_base/data/dto/staff/user_info_dto.dart';

part 'staff_service.g.dart';

@RestApi()
abstract class StaffService {
  factory StaffService(Dio dio, {String baseUrl}) = _StaffService;

  @POST(StaffAction.getUserInfor)
  @FormUrlEncoded()
  Future<BaseResponseModel<UserInfoDto>> getUserInfo(
    @Body() BaseRequestModel requestBody,
  );
}
