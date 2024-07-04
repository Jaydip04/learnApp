import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab_bar_widget extends StatefulWidget {
  const tab_bar_widget({super.key});

  @override
  State<tab_bar_widget> createState() => _tab_bar_widgetState();
}

class _tab_bar_widgetState extends State<tab_bar_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Cat"),
                Tab(text: "Dog"),
                Tab(text: "Rabbit",),

              ],
            ),
            title: const Text('Jaydip Tank',style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.green,
          ),
          body: const TabBarView(
            children: [
              Image(image: AssetImage("assets/my_image.png")),
              Image(image: AssetImage("assets/my_image.png")),
              Image(image: AssetImage("assets/my_image.png")),
            ],
          ),
        ),
      )
    );
  }
}
