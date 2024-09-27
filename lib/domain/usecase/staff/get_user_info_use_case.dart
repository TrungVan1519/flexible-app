import 'package:dartz/dartz.dart';
import 'package:v_office_base/base/usecase/usecase.dart';
import 'package:v_office_base/core/networking/interceptor/exceptions/api_exception.dart';
import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';
import 'package:v_office_base/domain/repository/staff/staff_repository.dart';

class GetUserInfoUseCase extends UseCase<UserInfoEntity?, NoParams> {
  final StaffRepository repository;

  GetUserInfoUseCase({
    required this.repository,
  });

  @override
  Future<Either<Exception, UserInfoEntity?>> call(params) async {
    try {
      final result = await repository.getUserInfo();
      return Right(result);
    } on ApiException catch (error) {
      return Left(error);
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
