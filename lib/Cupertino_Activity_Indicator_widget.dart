import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cupertino_indicator_widget extends StatefulWidget {
  const cupertino_indicator_widget({super.key});

  @override
  State<cupertino_indicator_widget> createState() => _cupertino_indicator_widgetState();
}

class _cupertino_indicator_widgetState extends State<cupertino_indicator_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          animating:true,
          radius: 50,
        ),
      ),
    );
  }
}
