import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:v_office_base/base/constant/service_const.dart';
import 'package:v_office_base/core/networking/model/base_response.dart';
import 'package:v_office_base/data/dto/auth/authenticate_login_dto.dart';
import 'package:v_office_base/data/dto/auth/base_role_dto.dart';
import 'package:v_office_base/data/dto/auth/menu_action_dto.dart';
import 'package:v_office_base/data/dto/auth/menu_dto.dart';
import 'package:v_office_base/data/service/auth/request_model/get_base_roles_request_model.dart';
import 'package:v_office_base/data/service/auth/request_model/login_request_model.dart';
part 'authenticate_service.g.dart';

@RestApi()
abstract class AuthenticateActionService {
  factory AuthenticateActionService(Dio dio, {String baseUrl}) =
      _AuthenticateActionService;

  @POST(AuthenticateAction.login)
  Future<BaseResponseModel<AuthenticateLoginDto>> login(
      @Body() LoginRequestModel request);

  @GET(AuthenticateAction.getPrivilege)
  Future<BaseResponseModel<List<MenuDto>>> getMenu(
      @Query("menuId") int menuId, @Query("deviceStatus") int deviceStatus);

  @GET(AuthenticateAction.getBaseRole)
  Future<BaseResponseModel<List<BaseRolesDto>>> getBaseRoles(
      @Body() GetBaseRolesRequestModel request);

  @GET(AuthenticateAction.getMenuAction)
  Future<BaseResponseModel<List<MenuActionDto>>> getMenuAction(
      @Query("menuId") int menuId, @Query("deviceStatus") int deviceStatus);
}
