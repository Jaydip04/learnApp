import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sharder_mask extends StatefulWidget {
  const sharder_mask({super.key});

  @override
  State<sharder_mask> createState() => _sharder_maskState();
}

class _sharder_maskState extends State<sharder_mask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) => RadialGradient(
              center: Alignment.topLeft,
              radius: 1.0,
              colors: [
                Colors.yellow,
                Colors.deepOrange
              ],
            tileMode: TileMode.mirror,
            ).createShader(bounds),
          child: Text("Jaydip Tank",style: TextStyle(color: Colors.white,fontSize: 48),)
        ),
      ),
    );
  }
}
