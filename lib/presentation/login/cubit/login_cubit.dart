import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/cubit.dart';
import 'package:v_office_base/base/extension/extension.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/usecase/usecase.dart';
import 'package:v_office_base/base/utils/triple.dart';
import 'package:v_office_base/core/networking/interceptor/exceptions/exception.dart';
import 'package:v_office_base/data/service/auth/request_model/login_request_model.dart';
import 'package:v_office_base/domain/usecase/auth/login_use_case.dart';
import 'package:v_office_base/domain/usecase/staff/get_user_info_use_case.dart';
import 'package:v_office_base/generated/l10n.dart';
import 'package:v_office_base/presentation/login/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginUseCase, required this.getUserInfoUseCase})
      : super(LoginState.init());

  LoginUseCase loginUseCase;

  GetUserInfoUseCase getUserInfoUseCase;

  final getIt = GetIt.instance;

  bool validateUsernameAndPassword(String username, String password) {
    if (username.isNullOrEmpty || password.isNullOrEmpty) {
      safeEmit(
        LoginState.error(VOLocale.current.username_password_incorrect),
      );

      return false;
    }
    return true;
  }

  void showPassword(bool isShow) {
    safeEmit(LoginState.showPassword(isShow));
  }

  Future<void> handleLogin(String username, String password) async {
    if (!validateUsernameAndPassword(username, password)) {
      return;
    }
    safeEmit(LoginState.loading());

    final response = await loginUseCase
        .call(LoginRequestModel(username: username, password: password));

    response.fold((l) {
      safeEmit(LoginState.error(l.errorMessage));
    }, (r) async {
      if (r.isNullOrEmpty) {
        safeEmit(
          LoginState.error(VOLocale.current.login_failed),
        );
      } else {
        if (r?.token != null) {
          saveToken(r?.token);

          await _onGetUserInfo();
        }
      }
    });
  }

  Future<void> _onGetUserInfo() async {
    final response = await getUserInfoUseCase.call(NoParams());

    response.fold((l) {
      safeEmit(LoginState.error(l.errorMessage));
    }, (r) async {
      if (r.isNullOrEmpty) {
        safeEmit(
          LoginState.error(VOLocale.current.login_failed),
        );
      } else {
        safeEmit(LoginState.success(r));
      }
    });
  }

  void saveToken(String? jwtToken) async {
    await getIt
        .get<SharedPreferencesManager>()
        .putString(KEY_ACCESS_TOKEN, jwtToken.orEmpty);
  }
}
