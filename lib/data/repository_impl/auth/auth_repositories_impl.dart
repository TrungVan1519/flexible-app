import 'package:dio/dio.dart';
import 'package:v_office_base/data/service/auth/authenticate_service.dart';
import 'package:v_office_base/data/service/auth/request_model/get_privilege_request_model.dart';
import 'package:v_office_base/data/service/auth/request_model/login_request_model.dart';
import 'package:v_office_base/domain/entity/auth/authenticate_login_entity.dart';
import 'package:v_office_base/domain/entity/auth/base_role_entity.dart';
import 'package:v_office_base/domain/entity/auth/menu_action_entity.dart';
import 'package:v_office_base/domain/entity/auth/menu_entity.dart';
import 'package:v_office_base/domain/repository/auth/auth_repositories.dart';

import '../../service/auth/request_model/get_base_roles_request_model.dart';

class AuthenticateActionRepositoryImpl extends AuthenticateActionRepository {
  final AuthenticateActionService authenticateActionService;

  AuthenticateActionRepositoryImpl({
    required this.authenticateActionService,
  });

  @override
  Future<AuthenticateLoginEntity?> login(
      {required String username, required String password}) async {
    try {
      final request = LoginRequestModel(username: username, password: password);
      final response = await authenticateActionService.login(request);

      return response.result.data.toAuthenticateLoginEntity;
    } on DioException catch (_) {
      rethrow;
    } catch (_) {}
    return null;
  }

  @override
  Future<List<MenuEntity>?> getMenu(
      {required GetPrivilegeRequestModel request}) async {
    try {
      final response = await authenticateActionService.getMenu(
          request.menuId, request.deviceStatus);

      return response.result.data.map((e) => e.toMenuEntity).toList();
    } on DioException catch (_) {
      rethrow;
    } catch (_) {}
    return null;
  }

  @override
  Future<List<BaseRoleEntity>?> getBaseRoles(
      {required GetBaseRolesRequestModel request}) async {
    try {
      final response = await authenticateActionService.getBaseRoles(request);

      return response.result.data.map((e) => e.toBaseRoleEntity).toList();
    } on DioException catch (_) {
      rethrow;
    } catch (_) {}
    return null;
  }

  @override
  Future<List<MenuActionEntity>?> getMenuAction(
      {required GetPrivilegeRequestModel request}) async {
    try {
      final response = await authenticateActionService.getMenuAction(
          request.menuId, request.deviceStatus);

      return response.result.data.map((e) => e.toMenuActionEntity).toList();
    } on DioException catch (_) {
      rethrow;
    } catch (_) {}
    return null;
  }
}
