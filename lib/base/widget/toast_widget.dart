import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/widget/icon_widget.dart';
import 'package:v_office_base/gen/assets.gen.dart';

enum ToastType { Success, Error, Other }

class ToastWidget {
  late GlobalKey globalKey;
  FToast fToast = FToast();

  ToastWidget() {
    globalKey = GlobalKey();
    //   fToast.init(globalKey.currentState!.context);
  }

  Widget _toastContent({
    required String message,
    required ToastType toastType,
    Widget? customContent,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: ThemeUtils.color.secondaryVariant,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildToastIconType(toastType),
          const SizedBox(width: 8.0),
          Flexible(
            child: customContent ??
                Text(message, style: ThemeUtils.textStyle.mediumTextRegular),
          ),
        ],
      ),
    );
  }

  registerContext() {
    fToast.init(globalKey.currentState!.context);
  }

  _showToast(
    String message,
    ToastGravity gravity,
    ToastType toastType, {
    int? duration,
    Widget? customContent,
  }) {
    // todo remove duplicate Toast showing
    removeToast();
    fToast.showToast(
      gravity: gravity,
      toastDuration: Duration(seconds: duration ?? 3),
      child: _toastContent(
        message: message,
        toastType: toastType,
        customContent: customContent,
      ),
    );
  }

  Widget _buildToastIconType(ToastType toastType) {
    switch (toastType) {
      case ToastType.Success:
        return IconWidget.ic24(
          path: Assets.images.icSuccessOutline,
          color: ThemeUtils.color.neutralGreen,
        );
      case ToastType.Error:
        return IconWidget.ic24(
          path: Assets.images.icWarning,
          color: ThemeUtils.color.neutralRed,
        );
      default:
        return const SizedBox();
    }
  }

  showToastCenterSuccess({
    required String message,
    int? duration,
    Widget? customContent,
  }) {
    _showToast(
      message,
      ToastGravity.CENTER,
      ToastType.Success,
      duration: duration,
      customContent: customContent,
    );
  }

  showToastCenterError({
    required String message,
    int? duration,
    Widget? customContent,
  }) {
    _showToast(
      message,
      ToastGravity.CENTER,
      ToastType.Error,
      duration: duration,
      customContent: customContent,
    );
  }

  // todo remove present showing toast
  removeToast() {
    fToast.removeCustomToast();
  }

  // todo clear the queue
  removeAllQueuedToasts() {
    fToast.removeQueuedCustomToasts();
  }
}
