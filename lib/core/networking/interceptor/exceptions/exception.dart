import 'package:dio/dio.dart';

import 'package:v_office_base/core/networking/interceptor/exceptions/api_exception.dart';
import 'package:v_office_base/generated/l10n.dart';

extension ExceptionEx on Exception {
  String get errorMessage {
    Exception error = this;

    if (error is DioException && error.error is ApiException) {
      error = error.error as ApiException;
    }

    if (error is DioException && error.message != null && error.message != "") {
      return error.message!;
    }

    if (error is ApiException && error.message != null && error.message != "") {
      return error.message ?? '';
    }

    return VOLocale.current.network_error_unknow;
  }

  String? get code {
    if (this is ApiException && (this as ApiException).code != null) {
      return (this as ApiException).code!;
    }

    return null;
  }
}
