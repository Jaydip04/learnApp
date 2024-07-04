import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flow_widget extends StatefulWidget {
  const flow_widget({super.key});

  @override
  State<flow_widget> createState() => _flow_widgetState();
}

class _flow_widgetState extends State<flow_widget>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastIconClicked = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  @override
  void initState() {
    super.initState();
    menuAnimation =
        AnimationController(duration: Duration(milliseconds: 250), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Flow(
        //   delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        //   children: [
        //     Icon(Icons.add),
        //     Icon(Icons.remove)
        //   ],
        // ),
        child: Flow(
          delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
          children: menuItems
              .map<Widget>((IconData icon) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 300,top: 650),
                        child: FloatingActionButton(
                          backgroundColor: lastIconClicked == icon
                              ? Colors.orangeAccent
                              : Colors.grey,
                          splashColor: Colors.orangeAccent,
                          onPressed: () {
                            if (icon != Icons.menu) {
                              setState(() {
                                lastIconClicked = icon;
                              });
                            }
                            menuAnimation.status == AnimationStatus.completed
                                ? menuAnimation.reverse()
                                : menuAnimation.forward();
                          },
                          child: Icon(icon),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  // shouldRepaint override
  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  // paintChildren override
  @override
  void paintChildren(FlowPaintingContext context) {
    // context.paintChild(0, transform: Matrix4.identity());
    // context.paintChild(1, transform: Matrix4.translationValues(0, 50, 0));

    double dx = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      final offset = i * menuAnimation.value * 50;
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(i,
          transform: Matrix4.translationValues(-offset, -offset,0));
      // context.paintChild(
      //   i,
      //   transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0),
      // );
    }
  }
}
