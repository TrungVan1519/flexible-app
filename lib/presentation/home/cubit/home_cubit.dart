import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/cubit.dart';
import 'package:v_office_base/base/extension/generic.dart';
import 'package:v_office_base/base/extension/string.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';
import 'package:v_office_base/generated/l10n.dart';
import 'package:v_office_base/presentation/home/cubit/home_state.dart';
import 'package:v_office_base/presentation/home/ui_model/mapper/user_info_mapper.dart';
import 'package:v_office_base/presentation/home/ui_model/user_info_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.init());

  UserInfoModel? _userInfoModel;

  UserInfoModel? get userInfoModel => _userInfoModel;

  void initData() {
    final userInfoString =
        GetIt.instance<SharedPreferencesManager>().getString(USER_INFO);

    if (!userInfoString.isNullOrEmpty) {
      final userInfoEntity =
          UserInfoEntity.fromJson(jsonDecode(userInfoString.orEmpty));

      _userInfoModel = userInfoEntity.toUIModel;

      safeEmit(GetUserInfoModel(_userInfoModel));
    } else {
      safeEmit(Error(VOLocale.current.user_info_not_found));
    }
  }
}
