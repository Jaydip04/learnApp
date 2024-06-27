import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learnapp/Drawer_Widget.dart';
import 'package:learnapp/List_Wheel_Scroll_View_widget.dart';
import 'package:learnapp/Tab_Bar_Widget.dart';

import 'Alert_Dialog_Widget.dart';
import 'Snack_Bar_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyC8fy2lQZ8r6nzkhX6pD1Z0VHFqe3k5XEE",
        appId: "1:467445813310:android:03bb7ddaad0ca84170816f",
        messagingSenderId: "467445813310",
        projectId: "learn-app-eb420",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learn App",
      home: alert_dialog_widget()
    );
  }
}

