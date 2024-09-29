import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/extension/contextx.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/theme/vo_color.dart';
import 'package:v_office_base/base/widget/base_button.dart';
import 'package:v_office_base/base/widget/icon_widget.dart';
import 'package:v_office_base/base/widget/toast_widget.dart';
import 'package:v_office_base/core/app_services/app_services.dart';
import 'package:v_office_base/gen/assets.gen.dart';
import 'package:v_office_base/generated/l10n.dart';
import 'package:v_office_base/presentation/login/utils/login_const.dart';
import 'package:v_office_base/presentation/splash/cubit/splash_cubit.dart';
import 'package:v_office_base/presentation/splash/cubit/splash_state.dart';
import 'package:v_office_base/presentation/splash/widget/circle_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GetIt.instance<ToastWidget>().globalKey,
      backgroundColor: ThemeUtils.color.background,
      body: _buildBody(context),
      bottomNavigationBar: _buildBottom(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 48, left: 16, right: 16),
      width: context.w12,
      height: context.h12,
      child: Column(
        children: [
          _buildTop(),
          const SizedBox(height: 24),
          _buildChooseTheme(context),
          const SizedBox(height: 24),
          _buildChooseLanguage(context),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: SizedBox(
                    width: 256,
                    height: 240,
                    child: Image.asset(Assets.images.intro.path),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 48,
                      height: 42,
                      child: Image.asset(Assets.images.vofficeIcon.path),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      VOLocale.current.v_office,
                      style: ThemeUtils.textStyle.pageTitleBold!
                          .copyWith(fontSize: 22),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: Text(
                    VOLocale.current.welcome_to_voffice,
                    textAlign: TextAlign.center,
                    style: ThemeUtils.textStyle.pageTitleBold!
                        .copyWith(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChooseTheme(BuildContext context) {
    final appTheme = context.read<SplashCubit>().curTheme;

    return BlocBuilder<SplashCubit, SplashState>(
      buildWhen: (previous, current) {
        return current != previous && current is ChangeTheme;
      },
      builder: (context, state) {
        return Row(
          children: [
            Assets.images.theme.image(width: 36, height: 36),
            const SizedBox(width: 24),
            InkWell(
              onTap: () {
                context.read<SplashCubit>().changeTheme(AppTheme.light);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    CircleWidget(
                      bgColor: appTheme == AppTheme.light
                          ? VOColors.green6
                          : VOColors.white,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      VOLocale.current.theme_light,
                      style: ThemeUtils.textStyle.mediumTextRegular,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            InkWell(
              onTap: () {
                context.read<SplashCubit>().changeTheme(AppTheme.dark);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    CircleWidget(
                      bgColor: appTheme == AppTheme.dark
                          ? VOColors.green6
                          : VOColors.white,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      VOLocale.current.theme_dark,
                      style: ThemeUtils.textStyle.mediumTextRegular,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Widget _buildChooseLanguage(BuildContext context) {
    final appLang = context.read<SplashCubit>().curLang;

    return BlocBuilder<SplashCubit, SplashState>(
      buildWhen: (previous, current) {
        return current != previous && current is ChangeLanguage;
      },
      builder: (context, state) {
        return Row(
          children: [
            Assets.images.language.image(width: 32, height: 32),
            const SizedBox(width: 24),
            InkWell(
              onTap: () {
                context.read<SplashCubit>().changeLanguage(AppLanguage.vi);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    CircleWidget(
                      bgColor: appLang == AppLanguage.vi
                          ? VOColors.green6
                          : VOColors.white,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      VOLocale.current.vietnamese,
                      style: ThemeUtils.textStyle.mediumTextRegular,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            InkWell(
              onTap: () {
                context.read<SplashCubit>().changeLanguage(AppLanguage.en);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    CircleWidget(
                      bgColor: appLang == AppLanguage.en
                          ? VOColors.green6
                          : VOColors.white,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      VOLocale.current.english,
                      style: ThemeUtils.textStyle.mediumTextRegular,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32, left: 128, right: 128),
      child: IButton.primaryNormal(
        textColor: VOColors.white,
        onPress: () => context.toNamed(LoginConst.loginScreen),
        title: VOLocale.current.continuee,
      ),
    );
  }

  Widget _buildTop() {
    return Row(
      children: [
        Expanded(child: IconWidget(path: Assets.images.iconStrength)),
        const SizedBox(width: 16),
        InkWell(
          onTap: () {
            GetIt.instance<ToastWidget>()
                .showToastCenterSuccess(message: VOLocale.current.ignore);
          },
          child: Text(
            VOLocale.current.ignore,
            style: ThemeUtils.textStyle.mediumTextBold!.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
