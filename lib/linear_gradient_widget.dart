import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Linear_Gradient_Widget extends StatefulWidget {
  const Linear_Gradient_Widget({super.key});

  @override
  State<Linear_Gradient_Widget> createState() => _Linear_Gradient_WidgetState();
}

class _Linear_Gradient_WidgetState extends State<Linear_Gradient_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) =>
              LinearGradient(
                colors: [
                  Color(0xff027dfd),
                  Color(0xff4100e0),
                  Color(0xff1cdac5),
                  Color(0xfff2dd22),
                ],
              ).createShader(bounds),
          child: Text("Hello World!",style: TextStyle(color: Colors.white,fontSize: 48,fontWeight: FontWeight.bold),),
        )
        // Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [
        //         Color(0xff027dfd),
        //         Color(0xff4100e0),
        //         Color(0xff1cdac5),
        //         Color(0xfff2dd22),
        //       ],
        //       stops: [0.1,0.20,0.50,0.75],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //     )
        //   ),
        // ),
      ),
    );
  }
}
