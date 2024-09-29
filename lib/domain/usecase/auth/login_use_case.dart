import 'package:dartz/dartz.dart';
import 'package:v_office_base/base/extension/string.dart';
import 'package:v_office_base/base/usecase/usecase.dart';
import 'package:v_office_base/core/networking/interceptor/exceptions/api_exception.dart';
import 'package:v_office_base/data/service/auth/request_model/login_request_model.dart';
import 'package:v_office_base/domain/entity/auth/authenticate_login_entity.dart';
import 'package:v_office_base/domain/repository/auth/auth_repositories.dart';

class LoginUseCase
    extends UseCase<AuthenticateLoginEntity?, LoginRequestModel> {
  final AuthenticateActionRepository repository;

  LoginUseCase({
    required this.repository,
  });

  @override
  Future<Either<Exception, AuthenticateLoginEntity?>> call(
      LoginRequestModel params) async {
    try {
      final result = await repository.login(
        password: params.password.orEmpty,
        username: params.username.orEmpty,
      );
      return Right(result);
    } on ApiException catch (error) {
      return Left(error);
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
