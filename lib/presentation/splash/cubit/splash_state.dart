import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_office_base/core/app_services/app_services.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  factory SplashState.init() = Init;

  factory SplashState.loading() = Loading;

  factory SplashState.goToLogin() = GoToLogin;

  factory SplashState.changeTheme(AppTheme theme) = ChangeTheme;

  factory SplashState.changeLanguage(AppLanguage language) = ChangeLanguage;

  factory SplashState.goToHome() = GoToHome;
}
