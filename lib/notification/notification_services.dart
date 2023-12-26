import 'dart:io';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notifications/notification/message_screen.dart';

class NotificationServices {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  ////requestNotificationPermission
  requestNotificationPermission() async {
    NotificationSettings settings = await firebaseMessaging.requestPermission(
        alert: true, // notification will be shown because of this
        announcement: true, //for reading voice
        badge: true,
        carPlay: true,
        criticalAlert: true,
        provisional: true,
        sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted Permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional Permission');
    } else {
      AppSettings.openAppSettings();
      print('User denied Permission');
    }
  }

  ///getDeviceToken
  Future<String> getDeviceToken() async {
    String? token = await firebaseMessaging.getToken();
    return token!;
  }

  // isTokenRefresh
  void isTokenRefresh() {
    firebaseMessaging.onTokenRefresh.listen((event) {
      event.toString();
    });
  }

  //initialized LocalNotifications initLocalNotifications
  void initLocalNotifications(
      BuildContext context, RemoteMessage message) async {
    var androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInitializationSettings = const DarwinInitializationSettings();
    var initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (payload) {
        handleMessage(context, message);
      },
    );
  }

  /// onMessage
  // void firebaseInit(BuildContext context) {
  //   FirebaseMessaging.onMessage.listen((message) {
  //     if (kDebugMode) {
  //             print(message.notification!.title.toString());
  //             print(message.notification!.body.toString());
  //           }
  //     if (Platform.isAndroid) {
  //       initLocalNotifications(context, message);
  //       showNotification(message);
  //     }
  //   });
  // }

  // firebaseinit onMessage

  //onMessage
  void firebaseinit(BuildContext context) {
    FirebaseMessaging.onMessage.listen(
      (message) {
        if (kDebugMode) {
          print(message.notification!.title.toString());
          print(message.notification!.body.toString());
          print(message.data.toString());
          print(message.data['type'].toString());
          print(message.data['type'].toString());
        }

        if (Platform.isAndroid) {
          initLocalNotifications(context, message);
          showNotification(message);
        } else {
          showNotification(message);
        }
      },
    );
  }

  // Show Notification
  Future<void> showNotification(RemoteMessage message) async {
    // AndroidNotificationChannel
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        Random.secure().nextInt(100000).toString(),
        'High Important Notification',
        importance: Importance.max);

    // AndroidNotificationDetails
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      channel.id.toString(),
      channel.name.toString(),
      channelDescription: 'Your channel Description',
      importance: Importance.high,
      priority: Priority.high,
      ticker: 'ticker',
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    Future.delayed(Duration.zero, () {
      flutterLocalNotificationsPlugin.show(
        0,
        message.notification!.title.toString(),
        message.notification!.body.toString(),
        notificationDetails,
      );
    });
  }

  // handleMessage
  void handleMessage(BuildContext context, RemoteMessage message) {
    if (message.data['type'] == 'ms') {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MessageScreen(
                    id: message.data['id'],
                  )));
    }
  }

  //setupInteractMessage for background  and terminated
   Future<void> setupInteractMessage(BuildContext context)async{
    RemoteMessage? initialMessage=await FirebaseMessaging.instance.getInitialMessage();
    // when app is terminated
    if(initialMessage !=null){
      handleMessage(context, initialMessage);
    }
    // when app in background
     FirebaseMessaging.onMessageOpenedApp.listen((event) {
       handleMessage(context, event);
     });
   }
}
