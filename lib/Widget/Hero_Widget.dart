import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hero_widget extends StatefulWidget {
  const hero_widget({super.key});

  @override
  State<hero_widget> createState() => _hero_widgetState();
}

class _hero_widgetState extends State<hero_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HeroMode(
          child: Hero(
            tag: "my-hero",
            child: Container(),
          ),
          enabled: false,
        ),
      ),
    );
  }
}
