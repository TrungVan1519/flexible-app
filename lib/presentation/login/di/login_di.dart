import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/core/networking/network.dart';
import 'package:v_office_base/data/repository_impl/auth/auth_repositories_impl.dart';
import 'package:v_office_base/data/repository_impl/staff/staff_repository_impl.dart';
import 'package:v_office_base/data/service/auth/authenticate_service.dart';
import 'package:v_office_base/data/service/staff/staff_service.dart';
import 'package:v_office_base/domain/repository/auth/auth_repositories.dart';
import 'package:v_office_base/domain/repository/staff/staff_repository.dart';
import 'package:v_office_base/domain/usecase/auth/get_base_role_use_case.dart';
import 'package:v_office_base/domain/usecase/auth/get_menu_action_use_case.dart';
import 'package:v_office_base/domain/usecase/auth/get_menu_use_case.dart';
import 'package:v_office_base/domain/usecase/auth/login_use_case.dart';
import 'package:v_office_base/domain/usecase/staff/get_user_info_use_case.dart';
import 'package:v_office_base/presentation/login/cubit/login_cubit.dart';

class LoginDI {
  static injectServices(GetIt getIt) {
    final dio = getIt.get<Dio>();

    final Network network = getIt.get();

    // service
    getIt
      ..registerLazySingleton<AuthenticateActionService>(
        () => AuthenticateActionService(dio, baseUrl: network.domain.authUrl),
      )
      ..registerLazySingleton<StaffService>(
        () => StaffService(dio, baseUrl: network.domain.apiUrl),
      );

    // repository
    getIt
      ..registerLazySingleton<AuthenticateActionRepository>(
        () => AuthenticateActionRepositoryImpl(
            authenticateActionService: getIt()),
      )
      ..registerLazySingleton<StaffRepository>(
        () => StaffRepositoryImpl(staffService: getIt()),
      );

    // usecase
    getIt
      ..registerFactory<LoginUseCase>(
        () => LoginUseCase(repository: getIt()),
      )
      ..registerFactory<GetBaseRoleUseCase>(
        () => GetBaseRoleUseCase(repository: getIt()),
      )
      ..registerFactory<GetMenuUseCase>(
        () => GetMenuUseCase(repository: getIt()),
      )
      ..registerFactory<GetMenuActionUseCase>(
        () => GetMenuActionUseCase(repository: getIt()),
      )
      ..registerFactory<GetUserInfoUseCase>(
        () => GetUserInfoUseCase(repository: getIt()),
      )
      ..registerFactory<LoginCubit>(
        () => LoginCubit(getUserInfoUseCase: getIt(), loginUseCase: getIt()),
      );
  }
}
