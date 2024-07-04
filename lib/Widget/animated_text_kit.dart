import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_text_kit extends StatefulWidget {
  const animated_text_kit({super.key});

  @override
  State<animated_text_kit> createState() => _animated_text_kitState();
}

class _animated_text_kitState extends State<animated_text_kit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            // TyperAnimatedText("Jaydip Tank",textStyle: TextStyle(fontSize: 48)),
            // TyperAnimatedText("Android",textStyle: TextStyle(fontSize: 48)),
            // TyperAnimatedText("Developer",textStyle: TextStyle(fontSize: 48)),

            // RotateAnimatedText("Jaydip Tank",textStyle: TextStyle(fontSize: 48)),
            // RotateAnimatedText("Android",textStyle: TextStyle(fontSize: 48)),
            // RotateAnimatedText("Developer",textStyle: TextStyle(fontSize: 48)),

            // ScaleAnimatedText("Jaydip Tank",textStyle: TextStyle(fontSize: 48)),
            // ScaleAnimatedText("Android",textStyle: TextStyle(fontSize: 48)),
            // ScaleAnimatedText("Developer",textStyle: TextStyle(fontSize: 48)),
            // WavyAnimatedText("Jaydip Tank",textStyle: TextStyle(fontSize: 48)),


            // ColorizeAnimatedText("Jaydip Tank",
            //     colors: [
            //       Color(0xff027dfd),
            //       Color(0xff4100e0),
            //       Color(0xff1cdac5),
            //       Color(0xfff2dd22),
            //     ],
            //     textStyle: TextStyle(fontSize: 48)),
          ],
        ),
      ),
    );
  }
}
