import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:v_office_base/base/utils/utils.dart';

import 'api_error_model.dart';
import 'exceptions/api_exception.dart';

class HandleErrorInterceptor extends Interceptor {
  HandleErrorInterceptor({this.errorTokenExpire});

  final VoidCallback? errorTokenExpire;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.responseType = ResponseType.json;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final apiException = await err.toApiException();
    final currentError = err.copyWith(error: apiException);

    if (apiException.statusCode == 401) {
      errorTokenExpire?.call();
    } else {
      handler.next(currentError);
    }
  }
}

extension on DioException {
  Future<ApiException> toApiException() async {
    final errorCode = response?.statusCode ?? 0;
    final path = response?.requestOptions.uri.path ?? '';

    if (type == DioExceptionType.connectionTimeout) {
      if (!await Utils.I.checkInternetConnection()) {
        return ApiException.noConnection(
            path,
            "Không có kết nối mạng!\nĐ/c vui lòng kiểm tra lại đường truyền",
            '',
            0);
      }

      return ApiException.noConnection(path,
          "Không có kết nối tới Máy chủ!\nĐ/c vui lòng thử lại sau", '', 0);
    }

    if (errorCode == 503) {
      return ApiException.internalServerError(
          path, "Lỗi hệ thống, vui lòng thử lại sau", '$errorCode', errorCode);
    }

    var apiError = APIError();
    if (response?.data is Map) {
      apiError = APIError.fromJson(response?.data);
    } else {
      apiError = APIError(message: "Lỗi hệ thống, vui lòng thử lại sau");
    }

    switch (errorCode) {
      case 400:
        return ApiException.badRequest(
            path,
            apiError.message ?? "Lỗi hệ thống, vui lòng thử lại sau",
            apiError.code,
            errorCode);
      case 401:
        return ApiException.unauthorized(
            path,
            apiError.message ?? "Lỗi hệ thống, vui lòng thử lại sau",
            apiError.code,
            errorCode);
      case 403:
        return ApiException.forbidden(
            path,
            apiError.message ?? "Lỗi hệ thống, vui lòng thử lại sau",
            apiError.code,
            errorCode);
      case 404:
        return ApiException.notFound(
            path,
            apiError.message ?? "Lỗi hệ thống, vui lòng thử lại sau",
            apiError.code,
            errorCode);
      case 500:
        return ApiException.internalServerError(
            path,
            apiError.message ?? "Lỗi hệ thống, vui lòng thử lại sau",
            apiError.code,
            errorCode);
      default:
        if (!await Utils.I.checkInternetConnection()) {
          return ApiException.noConnection(
              path,
              "Không có kết nối mạng!\nĐ/c vui lòng kiểm tra lại đường truyền",
              '',
              0);
        }

        return ApiException.noConnection(path,
            "Không có kết nối tới Máy chủ!\nĐ/c vui lòng thử lại sau", '', 0);
    }
  }
}

extension on DioException {
  String toMessage() {
    return (error as ApiException).message ?? '';
  }
}
