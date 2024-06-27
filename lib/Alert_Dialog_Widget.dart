import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alert_dialog_widget extends StatefulWidget {
  const alert_dialog_widget({super.key});

  @override
  State<alert_dialog_widget> createState() => _alert_dialog_widgetState();
}

class _alert_dialog_widgetState extends State<alert_dialog_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                // barrierDismissible: false,
                builder: (context) => AlertDialog(
                      title: Text("Accept?"),
                      content: Text("Do you accept?"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("No")),
                        TextButton(onPressed: () {}, child: Text("Yes")),
                      ],
                      elevation: 24.0,
                      backgroundColor: Colors.blue,

                    ));
          },
          child: Text("Click me!"),
        ),
      ),
    );
  }
}
