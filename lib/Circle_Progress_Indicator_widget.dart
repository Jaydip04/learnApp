import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class circle_progress_indicator_widget extends StatefulWidget {
  const circle_progress_indicator_widget({super.key});

  @override
  State<circle_progress_indicator_widget> createState() => _circle_progress_indicator_widgetState();
}

class _circle_progress_indicator_widgetState extends State<circle_progress_indicator_widget> {
  var _downloadPercentage = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircularProgressIndicator(
              strokeWidth: 10,
              valueColor: AlwaysStoppedAnimation<Color> (Colors.green),
            ),
            LinearProgressIndicator(backgroundColor: Colors.red,),
            CircularProgressIndicator(
              value: _downloadPercentage,
            ),
          ],
        ),
      ),
    );
  }
}
