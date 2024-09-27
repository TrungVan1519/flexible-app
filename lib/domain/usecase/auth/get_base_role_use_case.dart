import 'package:dartz/dartz.dart';
import 'package:v_office_base/base/usecase/usecase.dart';
import 'package:v_office_base/core/networking/interceptor/exceptions/api_exception.dart';
import 'package:v_office_base/data/service/auth/request_model/get_base_roles_request_model.dart';
import 'package:v_office_base/data/service/auth/request_model/get_privilege_request_model.dart';
import 'package:v_office_base/domain/entity/auth/base_role_entity.dart';
import 'package:v_office_base/domain/entity/auth/menu_entity.dart';
import 'package:v_office_base/domain/repository/auth/auth_repositories.dart';

class GetBaseRoleUseCase
    extends UseCase<List<BaseRoleEntity>?, GetBaseRolesRequestModel> {
  final AuthenticateActionRepository repository;

  GetBaseRoleUseCase({
    required this.repository,
  });

  @override
  Future<Either<Exception, List<BaseRoleEntity>?>> call(
      GetBaseRolesRequestModel params) async {
    try {
      final result = await repository.getBaseRoles(request: params);
      return Right(result);
    } on ApiException catch (error) {
      return Left(error);
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
