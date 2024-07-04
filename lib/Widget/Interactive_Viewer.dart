import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class interactive_viewer_widget extends StatefulWidget {
  const interactive_viewer_widget({super.key});

  @override
  State<interactive_viewer_widget> createState() =>
      _interactive_viewer_widgetState();
}

class _interactive_viewer_widgetState extends State<interactive_viewer_widget> {
  var _controller;

  @override
  Widget build(BuildContext context) {
    var _handleInteraction;
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          color: Colors.black,
          child: InteractiveViewer(
            constrained: false,
            scaleEnabled: false,
            boundaryMargin: EdgeInsets.all(42),
            onInteractionStart: _handleInteraction,
            transformationController: _controller,
            child: Image.asset("assets/my_image.png"),
          ),
        ),
      ),
    );
  }
}
