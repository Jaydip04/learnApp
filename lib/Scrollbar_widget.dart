import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scroll_bar extends StatefulWidget {
  const scroll_bar({super.key});

  @override
  State<scroll_bar> createState() => _scroll_barState();
}

class _scroll_barState extends State<scroll_bar> {
  List MyItem = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scrollbar(
            thumbVisibility:true,
            thickness: 10,
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(Icons.list),
                      title: Text("List item $index"));
                })),
      ),
    );
  }
}
