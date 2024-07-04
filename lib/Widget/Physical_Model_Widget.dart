import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class physical_model_widget extends StatefulWidget {
  const physical_model_widget({super.key});

  @override
  State<physical_model_widget> createState() => _physical_model_widgetState();
}

class _physical_model_widgetState extends State<physical_model_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhysicalModel(
          elevation: 8.0,
          shadowColor: Colors.pink,
          color: Colors.black,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
