import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:v_office_base/base/extension/extension.dart';

enum PermissionType { success, denied, permanentlyDenied }

class Utils {
  Utils._();

  static final I = Utils._();

  final toolTipKey = GlobalKey();
  final justToolTipKey = GlobalKey();

  Future<String> deviceName() async {
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      return "${info.device} - ${info.manufacturer} - ${info.version.release}";
    } else {
      final info = await deviceInfo.iosInfo;
      return "${info.name}-  ${info.systemName} - ${info.systemVersion}";
    }
  }

  Future<PermissionType> requestPermissionStorage() async {
    Permission permission = Permission.storage;

    if (Platform.isIOS) {
      permission = Permission.storage;
    } else if (Platform.isAndroid) {
      final deviceInfo = DeviceInfoPlugin();
      final info = await deviceInfo.androidInfo;
      final osVersion = info.version.sdkInt;

      if (osVersion >= 33) {
        permission = Permission.photos;
      } else {
        permission = Permission.storage;
      }
    }

    final status = await permission.request();
    if (status == PermissionStatus.granted) {
      return PermissionType.success;
    }

    if (status == PermissionStatus.denied) {
      return PermissionType.denied;
    }

    return PermissionType.permanentlyDenied;
  }

  bool hasNotch() {
    if (MediaQueryData.fromView(WidgetsBinding.instance.window).padding.bottom >
        0) {
      return true;
    }

    return false;
  }

  Size get getSize =>
      MediaQueryData.fromView(WidgetsBinding.instance.window).size;

  Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } catch (_) {
      return false;
    }
  }

  Future<File> moveFile(File sourceFile, String newPath) async {
    try {
      // prefer using rename as it is probably faster
      return await sourceFile.rename(newPath);
    } on FileSystemException catch (e) {
      // if rename fails, copy the source file and then delete it
      final newFile = await sourceFile.copy(newPath);
      await sourceFile.delete();
      return newFile;
    }
  }

  bool isValidEmail(String email) {
    if (isNullOrEmpty) return false;
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  Future<String> getDeviceId() async {
    final nowInMillis = DateTime.now().millisecondsSinceEpoch.toString();
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      return info.id.isNotEmpty ? info.id : nowInMillis;
    } else {
      final info = await deviceInfo.iosInfo;
      return info.identifierForVendor ?? nowInMillis;
    }
  }
}
