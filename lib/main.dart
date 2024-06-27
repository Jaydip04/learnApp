import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learnapp/About_Dialog_widget.dart';
import 'package:learnapp/Checkbox_List_Tile_widget.dart';
import 'package:learnapp/Grid_View_widget.dart';
import 'package:learnapp/Interactive_Viewer.dart';
import 'package:learnapp/Sliver_App_Bar.dart';
import 'package:learnapp/Switch_widget.dart';

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
      home:checkbox_list_tile_file()
    );
  }
}

