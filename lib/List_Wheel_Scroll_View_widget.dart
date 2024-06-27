import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_wheel_scroll_Widget extends StatefulWidget {
  const list_wheel_scroll_Widget({super.key});

  @override
  State<list_wheel_scroll_Widget> createState() => _list_wheel_scroll_WidgetState();
}

class _list_wheel_scroll_WidgetState extends State<list_wheel_scroll_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          children: [
            Container(
              width: 200,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.grey,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.tealAccent,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.indigo,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.white,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.lightGreen,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.purple,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.amberAccent,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blueAccent,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blueGrey,
            ),
          ],
          itemExtent: 42,
          diameterRatio: 1.5,
          // offAxisFraction: -0.5,
          useMagnifier: true,
          magnification: 1.5,
        ),
      ),
    );
  }
}
