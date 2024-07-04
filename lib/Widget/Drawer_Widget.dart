import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawer_widget extends StatefulWidget {
  const drawer_widget({super.key});

  @override
  State<drawer_widget> createState() => _drawer_widgetState();
}

class _drawer_widgetState extends State<drawer_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jaydip Tank"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Jaydip")),
            ListTile(
              title: Text("item 1"),
            ),
            ListTile(
              title: Text("item 2"),
            ),
            ListTile(
              title: Text("item 3"),
            ),
            ListTile(
              title: Text("item 4"),
            ),
            ListTile(
              title: Text("item 5"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Jaydip Tank"),
      ),
    );
  }
}
