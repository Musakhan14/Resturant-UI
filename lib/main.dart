import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notifications/Resturant/pages/auth_screens/login_screen.dart';
import 'package:notifications/Resturant/theme_data/theme_data.dart';
import 'Resturant/pages/auth_screens/check_email_screen.dart';
import 'Resturant/pages/auth_screens/password_update_screen.dart';
import 'Resturant/pages/home_page/home_page.dart';
import 'Resturant/pages/onboarding_pages/app_page_view.dart';
import 'Resturant/theme_data/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M',
      theme: themeData,
      home: const HomePage(),
      builder: (context, child) {
        SizeConfig.init(context); // Initialize SizeConfig
        return child!;
      },
    );
  }
}
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:notifications/Resturant/pages/auth_screens/login_screen.dart';
// import 'package:notifications/Resturant/theme_data/theme_data.dart';
// import 'Resturant/pages/auth_screens/check_email_screen.dart';
// import 'Resturant/pages/auth_screens/password_update_screen.dart';
// import 'Resturant/pages/home_page/home_page.dart';
// import 'Resturant/pages/onboarding_pages/app_page_view.dart';
// import 'Resturant/theme_data/size_config.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackroundHandler);
//   runApp(const MyApp());
// }

// @pragma('vm:entry-pont')
// Future<void> _firebaseMessagingBackroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print(message.notification!.title.toString());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Multiple Data Passing Example',
//       theme: themeData,
//       home: const HomePage(),
//       builder: (context, child) {
//         SizeConfig.init(context); // Initialize SizeConfig
//         return child!;
//       },
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
// import 'package:notifications/second.dart';
// import 'first.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Data Passing Example',
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const FirstPage(),
//         '/second': (context) => SecondPage(),
//       },
//     );
//   }
// }

// ignore_for_file: avoid_print
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
//
// Future<void> firebaseOnBackroundMessageHandle(RemoteMessage message) async {
//   try {
//     print('Firebase Messaging Title ${message.notification!.title}');
//     print('Firebase Messaging Body ${message.notification!.body}');
//   } catch (e) {
//     print('Firebase Messaging Error ${e.toString()}');
//   }
// }
//
// void main() async {
//   try {
//     WidgetsFlutterBinding.ensureInitialized();
//     await Firebase.initializeApp();
//     FirebaseMessaging.onBackgroundMessage(firebaseOnBackroundMessageHandle);
//     runApp(const MyApp());
//   } catch (e) {
//     print('Firebase Messaging Error ${e.toString()}');
//   }
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
//     firebaseMessaging.getToken().then((value) {
//       print('Firebase Token  $value ');
//     });
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       print('FirebaseMessaging onMessage ${message.notification!.title}');
//       print('FirebaseMessaging onMessage ${message.notification!.body}');
//     });
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       print(
//           'Firebase Messaging onMessageOpenedApp ${message.notification!.title}');
//       print(
//           'Firebase Messaging onMessageOpenedApp ${message.notification!.body}');
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
