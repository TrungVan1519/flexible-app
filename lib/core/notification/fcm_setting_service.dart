import 'dart:async';

import 'package:permission_handler/permission_handler.dart';

class FCMSettingService {
  FCMSettingService._internal();

  static FCMSettingService get instance => FCMSettingService._internal();

  final _onChangePermission = StreamController<bool>.broadcast();

  Stream<bool> get onChangePermission => _onChangePermission.stream;

  bool isAcceptFCMPermission = false;

  void changeFCMPermission(bool isAccept) {
    isAcceptFCMPermission = isAccept;
    _onChangePermission.sink.add(isAcceptFCMPermission);
  }

  Future checkNotificationPermission() async {
    var status = await Permission.notification.status;
    isAcceptFCMPermission = status.isGranted;
    _onChangePermission.sink.add(isAcceptFCMPermission);
  }
}
