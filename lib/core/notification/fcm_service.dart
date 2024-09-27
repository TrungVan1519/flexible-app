import 'dart:async';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'fcm_setting_service.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

class FCMService {
  FCMService._internal();

  static FCMService instance = FCMService._internal();

  final _onReceiveRemoteNotif =
      StreamController<RemoteNotification?>.broadcast();

  Stream<RemoteNotification?> get onReceiveRemoteNotif =>
      _onReceiveRemoteNotif.stream;

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  AndroidNotificationChannel get getNotifChannel =>
      const AndroidNotificationChannel(
        'vo_base_channel',
        'VO Base Channel',
        importance: Importance.max,
        showBadge: false,
      );

  Future initialize(FirebaseOptions? options) async {
    await Firebase.initializeApp(options: options);
    await _initializeFirebaseMessaging();
  }

  Future _initializeFirebaseMessaging() async {
    await _requestPermission();
    await _configChannelNative();
    await _configLocalNotification();
    _registerMessageListener();
  }

  Future _requestPermission() async {
    final fcMessaging = FirebaseMessaging.instance;
    final settings = await fcMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: false,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      FCMSettingService.instance.changeFCMPermission(false);
    } else {
      FCMSettingService.instance.changeFCMPermission(true);
    }
  }

  Future _configChannelNative() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: false,
      sound: true,
    );

    //create channel notification
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(getNotifChannel);
  }

  Future _configLocalNotification() async {
    const initSettingAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettingIOS = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
      android: initSettingAndroid,
      iOS: initSettingIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (notificationResponse) {
        // Khi click vào message từ notification trên thanh statusBar
        if (notificationResponse.notificationResponseType ==
            NotificationResponseType.selectedNotification) {
          _onReceiveRemoteNotif.sink.add(
            RemoteNotification(
              title: notificationResponse.actionId,
              body: notificationResponse.payload,
            ),
          );
        }
      },
    );
  }

  void _registerMessageListener() {
    //listen foreground
    FirebaseMessaging.onMessage.listen((message) {
      if (!_onReceiveRemoteNotif.isClosed) {
        final fcmData = message.notification;
        _onReceiveRemoteNotif.sink.add(fcmData);
      }
      _showNotificationWithPayload(message);
    });

    //listen background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      if (!_onReceiveRemoteNotif.isClosed) {
        final fcmData = message.notification;
        _onReceiveRemoteNotif.sink.add(fcmData);
      }
    });
    FirebaseMessaging.onBackgroundMessage(
      _firebaseMessagingBackgroundHandler,
    );
  }

  void _showNotificationWithPayload(RemoteMessage message) {
    final notification = message.notification;
    final data = json.encode(message.data);
    final android = message.notification?.android;

    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'vo_base_channel', 'VO Base Channel',
        channelShowBadge: false,
        importance: Importance.max,
        priority: Priority.max,
        color: Colors.blue);
    const iosNotificationDetails = DarwinNotificationDetails(badgeNumber: 0);
    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iosNotificationDetails,
    );

    if (notification != null && android != null) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        platformChannelSpecifics,
        payload: message.notification?.body,
      );
    }
  }

  Future<String?> getToken() async {
    try {
      final token = await FirebaseMessaging.instance.getToken();

      return token;
    } catch (e) {
      if (kDebugMode) {
        print("getToken: $e");
      }
    }
    return null;
  }

  void getInitialFCMMessage() {
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        _onReceiveRemoteNotif.sink.add(message.notification);
      }
    });
  }
}

enum FCMType { forceground, background, terminate }
