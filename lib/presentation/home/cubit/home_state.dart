import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';
import 'package:v_office_base/presentation/home/ui_model/user_info_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  factory HomeState.init() = Init;

  factory HomeState.loading() = Loading;

  factory HomeState.error(String? message) = Error;

  factory HomeState.getUserInfoModel(
    UserInfoModel? userInfoModel,
  ) = GetUserInfoModel;
}
