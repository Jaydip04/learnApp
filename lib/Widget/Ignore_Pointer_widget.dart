import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ignore_pointer_widget extends StatefulWidget {
  const ignore_pointer_widget({super.key});

  @override
  State<ignore_pointer_widget> createState() => _ignore_pointer_widgetState();
}

class _ignore_pointer_widgetState extends State<ignore_pointer_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IgnorePointer(
          ignoring: true,
          child: ElevatedButton(onPressed: () {  }, child: Text("Click me!"),

          ),
        ),
      ),
    );
  }
}
