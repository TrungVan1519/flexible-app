// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/extension.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/utils/utils.dart';
import 'package:v_office_base/base/widget/icon_widget.dart';
import 'package:v_office_base/base/widget/loading_dialog.dart';
import 'package:v_office_base/base/widget/toast_widget.dart';
import 'package:v_office_base/core/app_services/app_services.dart';
import 'package:v_office_base/domain/entity/staff/user_info_entity.dart';
import 'package:v_office_base/gen/assets.gen.dart';
import 'package:v_office_base/generated/l10n.dart';
import 'package:v_office_base/presentation/dashboard/utils/dashboard_contants.dart';
import 'package:v_office_base/presentation/login/cubit/login_cubit.dart';
import 'package:v_office_base/presentation/login/cubit/login_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController urlController = TextEditingController();

  final TextEditingController userController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  @override
  void initState() {
    userController.text = "185753";
    passController.text = "222222aA@";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double imageBgHeight = Utils.I.getSize.height * 0.45;
    return Scaffold(
      backgroundColor: ThemeUtils.color.background,
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loading: () => showLoading(context),
            error: (message) => _handleError(message),
            success: (userInfoEntity) => _handleSuccess(userInfoEntity),
          );
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Assets.images.bgLogin
                  .image(width: Utils.I.getSize.width, height: imageBgHeight),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(VOLocale.current.login,
                        style: ThemeUtils.textStyle.mediumTextBold!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  _buildChangeLanguage(context),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildInputSection(),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          VOLocale.current.login_forgot_pass,
                          style: ThemeUtils.textStyle.mediumTextBold!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          VOLocale.current.change_password,
                          style: ThemeUtils.textStyle.mediumTextBold!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    _buildLoginButton(
                      onLogin: () {
                        context.read<LoginCubit>().handleLogin(
                            userController.text.trim(),
                            passController.text.trim());
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    _buildLoginWithBiometric(onLoginWithBiometric: () {
                      // controller.onLoginWithBiometric();
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputSection() {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            hintStyle: TextStyle(
              color: Color(0xFF848E94),
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
            hintText: "Url",
            fillColor: Color.fromARGB(255, 235, 237, 239),
            contentPadding: EdgeInsets.all(14.0),
          ),
          style: const TextStyle(
            color: Color(0xFF1B1D1F),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          controller: urlController,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            hintStyle: TextStyle(
              color: Color(0xFF848E94),
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
            hintText: VOLocale.current.email_employee_id,
            fillColor: Color.fromARGB(255, 235, 237, 239),
            contentPadding: EdgeInsets.all(14.0),
          ),
          style: const TextStyle(
            color: Color(0xFF1B1D1F),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          controller: userController,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            bool isShowPassword = false;

            if (state is ShowPassword) {
              isShowPassword = state.isShow;
            }
            return TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(
                  color: Color(0xFF848E94),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                hintText: VOLocale.current.password,
                fillColor: Color.fromARGB(255, 235, 237, 239),
                contentPadding: const EdgeInsets.all(14.0),
                suffixIcon: IconButton(
                  icon: isShowPassword
                      ? const Icon(Icons.visibility_off_rounded)
                      : const Icon(Icons.visibility_rounded),
                  onPressed: () {
                    context.read<LoginCubit>().showPassword(!isShowPassword);
                  },
                  color: const Color(0xFF848E94),
                ),
              ),
              obscureText: !isShowPassword,
              controller: passController,
              style: const TextStyle(
                color: Color(0xFF1B1D1F),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              obscuringCharacter: '●',
            );
          },
        )
      ],
    );
  }

  Widget _buildLoginButton({required void Function() onLogin}) {
    return InkWell(
      onTap: onLogin,
      child: Container(
        width: Utils.I.getSize.width * 0.8,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: const Color(0xFFEE0033),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            VOLocale.current.login,
            style: ThemeUtils.textStyle.mediumTextMedium!.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginWithBiometric(
      {required void Function() onLoginWithBiometric}) {
    return InkWell(
      onTap: onLoginWithBiometric,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconWidget(
              path: Assets.icons.icBiometric,
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 16),
            Text(
              VOLocale.current.lb_login_biometric,
              style: ThemeUtils.textStyle.mediumTextMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChangeLanguage(BuildContext context) {
    final currentLanguage =
        GetIt.instance<SharedPreferencesManager>().getString(kLanguage);

    AppLanguage appLanguage = AppLanguageEx.fromValue(currentLanguage);

    return GestureDetector(
      onTap: () {
        if (currentLanguage == AppLanguage.en.keyValue) {
          appLanguage = AppLanguage.vi;
        } else {
          appLanguage = AppLanguage.en;
        }
        GetIt.instance<AppCubit>().changeLanguage(language: appLanguage);

        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: appLanguage == AppLanguage.vi
            ? Assets.images.vnFlag.image(width: 30, height: 30)
            : Assets.images.usaFlag.image(width: 30, height: 30),
      ),
    );
  }

  void _handleError(String? message) {
    GetIt.instance<ToastWidget>()
        .showToastCenterError(message: message.orEmpty);

    dismissLoading(context);
  }

  void _handleSuccess(
    UserInfoEntity? userInfoEntity,
  ) {
    try {
      GetIt.instance<SharedPreferencesManager>()
          .putString(USER_INFO, jsonEncode(userInfoEntity?.toJson()));

      GetIt.instance<ToastWidget>().showToastCenterSuccess(
          message: VOLocale.current
              .welcome_employee(userInfoEntity?.fullName ?? ""));

      dismissLoading(context);

      Navigator.of(context).pushNamed(DashboardConst.dashboardScreen);
    } catch (e) {
      dismissLoading(context);

      GetIt.instance<ToastWidget>()
          .showToastCenterError(message: VOLocale.current.login_failed);
    }
  }
}
