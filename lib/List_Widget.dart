import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_widget extends StatefulWidget {
  const list_widget({super.key});

  @override
  State<list_widget> createState() => _list_widgetState();
}

class _list_widgetState extends State<list_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RefreshIndicator(
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          // triggerMode: RefreshIndicatorTriggerMode.onEdge,
          edgeOffset: 50,
          backgroundColor: Colors.black,
          displacement: 100,
          strokeWidth: 3,
          color: Colors.white,
          onRefresh: _refresh,
            child:ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text("List item $index"));
                })),
      ),
    );
  }

  Future<void> _refresh() async {
    return Future.delayed(Duration(seconds: 5));
  }
}
