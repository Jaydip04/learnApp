import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Badge_Widget extends StatefulWidget {
  const Badge_Widget({super.key});

  @override
  State<Badge_Widget> createState() => _Badge_WidgetState();
}

class _Badge_WidgetState extends State<Badge_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Badge(
          child: Icon(Icons.access_time),
        ),
      ),
    );
  }
}
