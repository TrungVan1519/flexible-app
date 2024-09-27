import 'package:dartz/dartz.dart';
import 'package:v_office_base/base/usecase/usecase.dart';
import 'package:v_office_base/core/networking/interceptor/exceptions/api_exception.dart';
import 'package:v_office_base/data/service/auth/request_model/get_privilege_request_model.dart';
import 'package:v_office_base/domain/entity/auth/menu_entity.dart';
import 'package:v_office_base/domain/repository/auth/auth_repositories.dart';

class GetMenuUseCase
    extends UseCase<List<MenuEntity>?, GetPrivilegeRequestModel> {
  final AuthenticateActionRepository repository;

  GetMenuUseCase({
    required this.repository,
  });

  @override
  Future<Either<Exception, List<MenuEntity>?>> call(
      GetPrivilegeRequestModel params) async {
    try {
      final result = await repository.getMenu(request: params);
      return Right(result);
    } on ApiException catch (error) {
      return Left(error);
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
