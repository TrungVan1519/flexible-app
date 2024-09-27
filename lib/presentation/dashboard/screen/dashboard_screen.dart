import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/utils/d_print.dart';
import 'package:v_office_base/base/utils/enum.dart';
import 'package:v_office_base/base/widget/toast_widget.dart';
import 'package:v_office_base/core/app_services/app_services.dart';
import 'package:v_office_base/core/app_services/bottom_bar_cubit.dart';
import 'package:v_office_base/generated/l10n.dart';
import 'package:v_office_base/presentation/dashboard/widget/icon_tab_bar.dart';
import 'package:v_office_base/presentation/document/screen/document_screen.dart';
import 'package:v_office_base/presentation/home/screen/home_screen.dart';
import 'package:v_office_base/presentation/mission/screen/mission_screen.dart';
import 'package:v_office_base/presentation/sign/screen/sign_screen.dart';

import '../../../gen/assets.gen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final BottomBarCubit _cubit = GetIt.instance.get();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cubit.initState(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, int>(
      builder: (context, index) {
        return Scaffold(
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _cubit.controller,
            onPageChanged: _cubit.onPageChanged,
            children: const [
              HomeScreen(),
              SignScreen(),
              DocumentScreen(),
              MissionScreen()
            ],
          ),
          bottomNavigationBar: _buildBottomNavigation(context, index),
        );
      },
    );
  }

  Widget _buildBottomNavigation(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeUtils.color.primary10.withOpacity(0.1),
      ),
      padding: const EdgeInsets.only(top: 0.1),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          final screenSize = MediaQuery.of(context).size;
          final showUnselectedLabels = screenSize.width >= 320;
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: showUnselectedLabels,
            backgroundColor: ThemeUtils.color.primary,
            selectedItemColor: ThemeUtils.color.neutralPrimary,
            unselectedItemColor: ThemeUtils.color.primary70,
            selectedLabelStyle: ThemeUtils.textStyle.smallTextMedium,
            unselectedLabelStyle: ThemeUtils.textStyle.smallTextRegular,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: IconTabBar(
                    path: index == MainPageType.home.tabValue
                        ? Assets.icons.icBottomHomeFilled
                        : Assets.icons.icHome,
                    isActive: index == MainPageType.home.tabValue,
                  ),
                  label: VOLocale.current.home),
              BottomNavigationBarItem(
                icon: IconTabBar(
                    path: index == MainPageType.digitalSign.tabValue
                        ? Assets.icons.icBottomSignFilled
                        : Assets.icons.icDigital,
                    isActive: index == MainPageType.document.tabValue),
                label: VOLocale.current.digital_sign,
              ),
              BottomNavigationBarItem(
                icon: IconTabBar(
                  path: index == MainPageType.document.tabValue
                      ? Assets.icons.icBottomDocumentFilled
                      : Assets.icons.icDocument,
                  isActive: index == MainPageType.document.tabValue,
                ),
                label: VOLocale.current.document_title,
              ),
              BottomNavigationBarItem(
                icon: IconTabBar(
                    path: index == MainPageType.mission.tabValue
                        ? Assets.icons.icBottomMissionFilled
                        : Assets.icons.icMission,
                    isActive: index == MainPageType.mission.tabValue),
                label: VOLocale.current.mission,
              ),
              BottomNavigationBarItem(
                icon:
                    IconTabBar(path: Assets.icons.icMoreMenu, isActive: false),
                label: VOLocale.current.more,
              )
            ],
            currentIndex: index,
            onTap: (int index) {
              _cubit.onPageChanged(index);
              if (index == MainPageType.other.tabValue) {
                GetIt.instance<ToastWidget>()
                    .showToastCenterSuccess(message: "More");
              }
            },
          );
        },
      ),
    );
  }
}
