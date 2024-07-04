import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class about_dialog_widget extends StatefulWidget {
  const about_dialog_widget({super.key});

  @override
  State<about_dialog_widget> createState() => _about_dialog_widgetState();
}

class _about_dialog_widgetState extends State<about_dialog_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAboutDialog(
                context: context,
                applicationVersion: '2.0.1',
                applicationIcon: Icon(
                  Icons.person,
                ),
                // applicationLegalese: "Jaydip Tank",
                children: [
                  Text("Hello Jaydip Tank, \nHow are you?, \nI am fine. \nand You")
                ],
            );
            // LicenseRegistry.addLicense(()async*{
            //   LicenseEntryWithLineBreaks(
            //     ['my_package'],
            //     'Jaydip',
            //   );
            // });
          },
          child: Text("Click me!"),
        ),
      ),
    );
  }
}
