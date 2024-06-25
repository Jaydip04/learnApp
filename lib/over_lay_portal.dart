import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Over_Lay_Portal extends StatefulWidget {
  const Over_Lay_Portal({super.key});

  @override
  State<Over_Lay_Portal> createState() => _Over_Lay_PortalState();
}

class _Over_Lay_PortalState extends State<Over_Lay_Portal> {
  var _overlaycontroller = OverlayPortalController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _overlaycontroller.toggle,
          child: OverlayPortal(
            controller: _overlaycontroller,
            overlayChildBuilder: (BuildContext context) {
              return Positioned(
                top: 300,
                left: 100,
                child: Text("I'm an overlay!"),
              );
            },
            child: Text("Press me!"),
          ),
        ),
      ),
    );
  }
}
