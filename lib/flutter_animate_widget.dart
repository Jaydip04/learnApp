import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Flutter_Animate_Widget extends StatefulWidget {
  const Flutter_Animate_Widget({super.key});

  @override
  State<Flutter_Animate_Widget> createState() => _Flutter_Animate_WidgetState();
}

class _Flutter_Animate_WidgetState extends State<Flutter_Animate_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello world!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),).animate().tint(color: Colors.amber).then().shake()
        // Animate(
        //   effects: [FadeEffect(),SlideEffect()],
        //   child: Text("Hello world!").animate().fade().slide(),
        // ),
      ),
    );
  }
}
