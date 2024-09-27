import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/cubit.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/utils/enum.dart';

class BottomBarCubit extends Cubit<int> {
  BottomBarCubit() : super(0);

  late PageController controller = PageController(initialPage: mainIndexPage);
  late BuildContext context;

  void initState(BuildContext context) {
    this.context = context;
    onPageChanged(mainIndexPage);
  }

  void onPageChanged(int index, {VoidCallback? onJumpDone}) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (index == MainPageType.other.index) {
      return;
    }

    _jumpToPage(index, onJumpDone: onJumpDone);
  }

  void _jumpToPage(int index, {VoidCallback? onJumpDone}) {
    controller.jumpToPage(index);
    safeEmit(index);
    onJumpDone?.call();
  }

  int get mainIndexPage {
    final String mainPage = GetIt.instance
            .get<SharedPreferencesManager>()
            .getString(MAIN_PAGE_KEY) ??
        '';

    return _getIndexPageByType(mainPage);
  }

  int _getIndexPageByType(String mainPageType) {
    if (mainPageType == MainPageType.home.toString()) {
      return MainPageType.home.index;
    }

    if (mainPageType == MainPageType.digitalSign.toString()) {
      return MainPageType.digitalSign.index;
    }

    if (mainPageType == MainPageType.document.toString()) {
      return MainPageType.document.index;
    }

    if (mainPageType == MainPageType.mission.toString()) {
      return MainPageType.mission.index;
    }

    if (mainPageType == MainPageType.other.toString()) {
      return MainPageType.other.index;
    }

    return MainPageType.home.index;
  }
}
