import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Sheet extends StatefulWidget {
  const Bottom_Sheet({super.key});

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 200,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Bottom Sheet")],
                        ),
                      ),
                    );
                  });
            },
            child: Text("Show Bottom Sheet"),
          ),
        ));
  }
}
