import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/cubit.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/theme/app_theme.dart';
import 'package:v_office_base/core/app_services/app_services.dart';

import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.init());

  AppLanguage _currLanguage = AppLanguageEx.fromValue(
      GetIt.instance<SharedPreferencesManager>().getString(kLanguage));

  AppLanguage get getCurrLanguage => _currLanguage;

  AppTheme _currTheme = AppThemeEx.fromValue(
      GetIt.instance<SharedPreferencesManager>().getString(kTheme));

  AppTheme get getCurrentTheme => _currTheme;

  void init() async {
    safeEmit(SplashState.loading());
    Future.delayed(
      const Duration(seconds: 3),
      () {
        safeEmit(SplashState.goToLogin());
      },
    );
  }

  void goToLogin() {
    safeEmit(SplashState.goToLogin());
  }

  void changeTheme(AppTheme appTheme) {
    //update theme global
    GetIt.instance<AppCubit>().changeTheme(theme: appTheme);

    safeEmit(SplashState.changeTheme(appTheme));
  }

  void changeLanguage(AppLanguage appLanguage) {
    //update language global
    GetIt.instance<AppCubit>().changeLanguage(language: appLanguage);

    safeEmit(SplashState.changeLanguage(appLanguage));
  }

  void setLanguage(AppLanguage language) {
    _currLanguage = language;
  }

  void setTheme(AppTheme appTheme) {
    _currTheme = appTheme;
  }

  @override
  Future<void> close() {
    // TODO: implement close
    return super.close();
  }
}
