import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkbox_list_tile_file extends StatefulWidget {
  const checkbox_list_tile_file({super.key});

  @override
  State<checkbox_list_tile_file> createState() => _checkbox_list_tile_fileState();
}

class _checkbox_list_tile_fileState extends State<checkbox_list_tile_file> {
  var _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          title: Text("Check! Mate?",style: TextStyle(color: Colors.green),),
          secondary: Icon(Icons.beach_access,color: Colors.green,),
          controlAffinity: ListTileControlAffinity.platform,
          value: _checked,
          onChanged: (bool? value){
            setState(() {
              _checked = value!;
            });
          },
          activeColor: Colors.green,
          checkColor: Colors.black,
        ),
      ),
    );
  }
}
