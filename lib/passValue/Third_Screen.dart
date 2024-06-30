import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class third_screen extends StatefulWidget {
  final String name;
  final String email;
  final String age;
  const third_screen(
      {super.key, required this.name, required this.email, required this.age});

  @override
  State<third_screen> createState() => _third_screenState();
}

class _third_screenState extends State<third_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Third Screen",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  "Name : " + widget.name,
                  style: commonTextStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email : " + widget.email,
                  style: commonTextStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Age : " + widget.age, style: commonTextStyle()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle commonTextStyle() {
    return TextStyle(
        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black);
  }
}
