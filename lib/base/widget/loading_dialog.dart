import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'loading_overlay_custom.dart';

bool isLoading = false;

Future<bool?> showLoading(BuildContext context,
    {bool dismissAble = true}) async {
  if (isLoading) return true;
  isLoading = true;
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: false,
    builder: (c) {
      return PopScope(
        onPopInvoked: (didPop) => dismissAble,
        child: buildLoading(
          true,
          bgColor: Colors.transparent,
        ),
      );
    },
  );
}

void dismissLoading(BuildContext context) {
  if (!isLoading) return;
  isLoading = false;
  if (Navigator.of(context).canPop()) {
    Navigator.pop(context);
  }
}
