// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class VOLocale {
  VOLocale();

  static VOLocale? _current;

  static VOLocale get current {
    assert(_current != null,
        'No instance of VOLocale was loaded. Try to initialize the VOLocale delegate before accessing VOLocale.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<VOLocale> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = VOLocale();
      VOLocale._current = instance;

      return instance;
    });
  }

  static VOLocale of(BuildContext context) {
    final instance = VOLocale.maybeOf(context);
    assert(instance != null,
        'No instance of VOLocale present in the widget tree. Did you add VOLocale.delegate in localizationsDelegates?');
    return instance!;
  }

  static VOLocale? maybeOf(BuildContext context) {
    return Localizations.of<VOLocale>(context, VOLocale);
  }

  /// `Trang Chủ`
  String get home {
    return Intl.message(
      'Trang Chủ',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu`
  String get login_forgot_pass {
    return Intl.message(
      'Quên mật khẩu',
      name: 'login_forgot_pass',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi phát sinh`
  String get network_error_unknow {
    return Intl.message(
      'Lỗi phát sinh',
      name: 'network_error_unknow',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Việt`
  String get vietnamese {
    return Intl.message(
      'Tiếng Việt',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Anh`
  String get english {
    return Intl.message(
      'Tiếng Anh',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập sinh trắc học`
  String get lb_login_biometric {
    return Intl.message(
      'Đăng nhập sinh trắc học',
      name: 'lb_login_biometric',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get change_password {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập thất bại`
  String get login_failed {
    return Intl.message(
      'Đăng nhập thất bại',
      name: 'login_failed',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập hoặc mật khẩu không được để trống.`
  String get username_password_incorrect {
    return Intl.message(
      'Tên đăng nhập hoặc mật khẩu không được để trống.',
      name: 'username_password_incorrect',
      desc: '',
      args: [],
    );
  }

  /// `Email/Mã nhân viên`
  String get email_employee_id {
    return Intl.message(
      'Email/Mã nhân viên',
      name: 'email_employee_id',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `VOffice`
  String get v_office {
    return Intl.message(
      'VOffice',
      name: 'v_office',
      desc: '',
      args: [],
    );
  }

  /// `Chào mừng tới Hệ thống Văn phòng số`
  String get welcome_to_voffice {
    return Intl.message(
      'Chào mừng tới Hệ thống Văn phòng số',
      name: 'welcome_to_voffice',
      desc: '',
      args: [],
    );
  }

  /// `Bỏ qua`
  String get ignore {
    return Intl.message(
      'Bỏ qua',
      name: 'ignore',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào, {{user}}`
  String welcome_employee(Object user) {
    return Intl.message(
      'Xin chào, {$user}',
      name: 'welcome_employee',
      desc: '',
      args: [user],
    );
  }

  /// `Tiếp tục`
  String get continuee {
    return Intl.message(
      'Tiếp tục',
      name: 'continuee',
      desc: '',
      args: [],
    );
  }

  /// `Chọn giao diện`
  String get choose_theme {
    return Intl.message(
      'Chọn giao diện',
      name: 'choose_theme',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngôn ngữ`
  String get choose_language {
    return Intl.message(
      'Chọn ngôn ngữ',
      name: 'choose_language',
      desc: '',
      args: [],
    );
  }

  /// `Tối`
  String get theme_dark {
    return Intl.message(
      'Tối',
      name: 'theme_dark',
      desc: '',
      args: [],
    );
  }

  /// `Sáng`
  String get theme_light {
    return Intl.message(
      'Sáng',
      name: 'theme_light',
      desc: '',
      args: [],
    );
  }

  /// `Văn bản`
  String get document_title {
    return Intl.message(
      'Văn bản',
      name: 'document_title',
      desc: '',
      args: [],
    );
  }

  /// `Ký điện tử`
  String get digital_sign {
    return Intl.message(
      'Ký điện tử',
      name: 'digital_sign',
      desc: '',
      args: [],
    );
  }

  /// `Nhiệm vụ`
  String get mission {
    return Intl.message(
      'Nhiệm vụ',
      name: 'mission',
      desc: '',
      args: [],
    );
  }

  /// `Xem thêm`
  String get more {
    return Intl.message(
      'Xem thêm',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy thông tin người dùng`
  String get user_info_not_found {
    return Intl.message(
      'Không tìm thấy thông tin người dùng',
      name: 'user_info_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào`
  String get hello {
    return Intl.message(
      'Xin chào',
      name: 'hello',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<VOLocale> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<VOLocale> load(Locale locale) => VOLocale.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
