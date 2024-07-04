import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class switch_widegt extends StatefulWidget {
  const switch_widegt({super.key});

  @override
  State<switch_widegt> createState() => _switch_widegtState();
}

class _switch_widegtState extends State<switch_widegt> {
  var _toogled = false;
  var _toogled_2 = false;
  var _toogled_3 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 200),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text("ListTile"),
                subtitle: Text("ListTile"),
              ),
              SwitchListTile(
                value: _toogled,
                title: Text("SwitchListTile"),
                subtitle: Text("ListTile"),
                secondary: Icon(Icons.wifi),
                onChanged: (bool value) {
                  setState(() {
                    _toogled = value;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              RadioListTile(
                title: Text("RadioListTile"),
                secondary: Icon(Icons.radio),
                subtitle: Text("ListTile"),
                groupValue:_toogled_2,
                onChanged: (bool? value) {
                  setState(() {
                    _toogled_2 = value!;
                  });
                }, value: true,
              ),
              RadioListTile(
                title: Text("RadioListTile"),
                secondary: Icon(Icons.radio),
                subtitle: Text("ListTile"),
                groupValue:_toogled_2,
                onChanged: (bool? value) {
                  setState(() {
                    _toogled_2 = value!;
                  });
                }, value: true,
              ),
              CheckboxListTile(
                value: _toogled_3,
                title: Text("RadioListTile"),
                secondary: Icon(Icons.check_box),
                subtitle: Text("ListTile"),
                onChanged: (bool? value) {
                  setState(() {
                    _toogled_3 = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
