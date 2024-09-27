import 'dart:convert';
import 'dart:io' show Platform;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/constant/service_const.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/utils/utils.dart';
import 'package:v_office_base/core/networking/model/base_request_model.dart';

Future<Dio> setupDio(String baseUrl) async {
  final options = BaseOptions(
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    responseType: ResponseType.json,
    baseUrl: baseUrl,
  );
  final dio = Dio(options);
  final info = await PackageInfo.fromPlatform();

  dio.options.headers["content-type"] = 'application/json';
  dio.interceptors.add(AppInfoInterceptor(info));
  dio.interceptors.add(AuthInterceptor());

  return dio;
}

class AppInfoInterceptor extends Interceptor {
  AppInfoInterceptor(this.info);

  final PackageInfo info;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      options.headers['x-app'] = info.appName;
      options.headers['x-version'] = info.version;

      if (Platform.isAndroid) {
        options.headers['x-platform'] = "Android";
      } else if (Platform.isIOS) {
        options.headers['x-platform'] = "iOS";
      }

      final shared = await SharedPreferences.getInstance();
      final deviceName = await Utils.I.deviceName();

      options.headers['accept-language'] = shared.get(kLanguage) ?? "vi";
      options.headers['x-devices'] = deviceName;
      options.headers['x-theme'] = shared.get(kTheme) ?? "dark";
    } catch (e) {
      if (kDebugMode) {
        print('CurlInterceptor AppInfoInterceptor error: $e');
      }
    }

    super.onRequest(options, handler);
  }
}

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token =
        GetIt.instance<SharedPreferencesManager>().getString(KEY_ACCESS_TOKEN);
    final deviceName = await Utils.I.deviceName();

    if (AuthenticateAction.login == options.path) {
      (options.data as Map<String, dynamic>?)?["deviceName"] = deviceName;
    } else {
      if (options.contentType == "application/x-www-form-urlencoded") {
        options.data = BaseRequestModel(
          deviceName: deviceName,
          data: options.data == null ? null : jsonEncode(options.data),
          isSecurity: false,
        ).toJson();
      }
    }
    options.headers['Authorization'] = 'Bearer $token';

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != 200) {
      print("statusCode ${response.statusCode}");
    }

    super.onResponse(response, handler);
  }
}
