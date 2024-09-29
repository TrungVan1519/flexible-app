// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_office_base/base/utils/d_print.dart';

extension BaseCubit on Cubit {
  void safeEmit(dynamic state) {
    try {
      emit(state);
    } on StateError catch (e) {
      dPrint("emit error $e");
    }
  }
}
