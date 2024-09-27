import 'package:v_office_base/data/service/auth/request_model/get_base_roles_request_model.dart';
import 'package:v_office_base/data/service/auth/request_model/get_privilege_request_model.dart';
import 'package:v_office_base/domain/entity/auth/authenticate_login_entity.dart';
import 'package:v_office_base/domain/entity/auth/menu_action_entity.dart';
import 'package:v_office_base/domain/entity/auth/menu_entity.dart';
import 'package:v_office_base/domain/entity/auth/base_role_entity.dart';

abstract class AuthenticateActionRepository {
  Future<AuthenticateLoginEntity?> login(
      {required String username, required String password});

  Future<List<MenuEntity>?> getMenu(
      {required GetPrivilegeRequestModel request});

  Future<List<BaseRoleEntity>?> getBaseRoles(
      {required GetBaseRolesRequestModel request});

  Future<List<MenuActionEntity>?> getMenuAction(
      {required GetPrivilegeRequestModel request});
}
