import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class snack_bar_widget extends StatefulWidget {
  const snack_bar_widget({super.key});

  @override
  State<snack_bar_widget> createState() => _snack_bar_widgetState();
}

class _snack_bar_widgetState extends State<snack_bar_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context) => Text("data"),enableDrag: false);
          },
          child: Text("Show a SnackBar"),

                ),
        ),
    );
  }
}
