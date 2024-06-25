import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drop_Down_Menu extends StatefulWidget {
  const Drop_Down_Menu({super.key});

  @override
  State<Drop_Down_Menu> createState() => _Drop_Down_MenuState();
}

class _Drop_Down_MenuState extends State<Drop_Down_Menu> {
  var _themeColor = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          color: _themeColor,
          child: DropdownMenu(
            label: Text("Select Theme Color"),
            helperText: "Chnage the color of your app",
            width: 300,
            enableSearch: false,
            enableFilter: false,
            onSelected: (color){
              if(color != null){
                setState(() {
                  _themeColor = color;
                });
              }
            },
            dropdownMenuEntries: <DropdownMenuEntry<Color>>[
              DropdownMenuEntry(value: Colors.red, label: "Red"),
              DropdownMenuEntry(value: Colors.blue, label: "Blue"),
              DropdownMenuEntry(value: Colors.purple, label: "Purple"),
              DropdownMenuEntry(value: Colors.green, label: "Green"),
              DropdownMenuEntry(value: Colors.brown, label: "Brown")
            ],
          ),
        ),
      ),
    );
  }
}
