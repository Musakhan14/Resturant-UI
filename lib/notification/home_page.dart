import 'dart:convert';

import 'package:flutter/material.dart';
import 'notification_services.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseinit(context);
    notificationServices.setupInteractMessage(context);
    // notificationServices.isTokenRefresh();
    notificationServices.getDeviceToken().then((value) {
      print('value Device Token $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                notificationServices.getDeviceToken().then((value) async {
                  var data = {
                    'to': value.toString(),
                    'priority': 'high',
                    'notification': {
                      'title': 'Musa',
                      'body': 'I am not good'
                    },
                    'data':{
                      'type':'ms',
                      'id':'12345',
                    }
                  };

                  var headers = {
                    'Content-Type': 'application/json',
                    'Authorization': 'key=AAAAK0Qll1c:APA91bG7-1jR-VnBULJd2Lys7IuPTsDNlMad1nN0SI77nLpkkyC3FzzHk64jVMEGT7kXnBuf__Pee_hMBxS-EmdLPMIrqpglnR9Jt5D9EV2W832p0vDOJDWxVl1QJ6A1I0T24q2S0CYM'
                  };

                  var response = await http.post(
                    Uri.parse('https://fcm.googleapis.com/fcm/send'),
                    headers: headers,
                    body: jsonEncode(data),
                  );

                  if (response.statusCode == 200) {
                    print('Notification sent successfully');
                  } else {
                    print('Failed to send notification');
                    print('Response: ${response.body}');
                  }
                });
              },
              child: Center(child: const Text('Send Notification')),
            ),

            // TextButton(
            //   onPressed: () {
            //     notificationServices.getDeviceToken().then((value)async {
            //       dynamic data={
            //         'to':value.toString(),
            //         'priority':'high',
            //         'notification':{
            //           'title':'Musa',
            //           'body':'I am not good'
            //         }
            //       };
            //       await http.post(Uri.parse('https://fcm.googleapis.com/fcm/send'),
            //       body: jsonDecode(data),
            //         headers: {
            //         'Content-Type':'application/json; charset=UTF-8',
            //           'Authorization':
            //           'key=AAAAK0Qll1c:APA91bG7-1jR-VnBULJd2Lys7IuPTsDNlMad1nN0SI77nLpkkyC3FzzHk64jVMEGT7kXnBuf__Pee_hMBxS-EmdLPMIrqpglnR9Jt5D9EV2W832p0vDOJDWxVl1QJ6A1I0T24q2S0CYM'
            //
            //         }
            //       );
            //       // awa
            //     });
            //   },
            //   child: Center(child: const Text('Send Notification')),
            // ),
          ],
        ),
      ),
    ));
  }
}
