import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState.init() = Init;
  factory LoginState.loading() = Loading;
  factory LoginState.error(String? message) = Error;
  factory LoginState.showPassword(bool isShow) = ShowPassword;
  factory LoginState.success(UserInfoEntity? userInfoEntity) = Success;
}
