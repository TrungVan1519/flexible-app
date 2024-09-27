import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_office_base/base/utils/d_print.dart';

extension BaseCubit on Cubit {
  void safeEmit(dynamic state) {
    try {
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
      emit(state);
    } on StateError catch (e) {
      if (kDebugMode) {
        dPrint("emit error $e");
      }
    }
  }
}
