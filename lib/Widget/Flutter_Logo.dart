import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flutter_logo extends StatefulWidget {
  const flutter_logo({super.key});

  @override
  State<flutter_logo> createState() => _flutter_logoState();
}

class _flutter_logoState extends State<flutter_logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
          style: FlutterLogoStyle.horizontal,
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 5),
        ),
      ),
    );
  }
}
