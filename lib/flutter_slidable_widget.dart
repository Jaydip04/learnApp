import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class flutter_slidable_widget extends StatefulWidget {
  const flutter_slidable_widget({super.key});

  @override
  State<flutter_slidable_widget> createState() => _flutter_slidable_widgetState();
}

class _flutter_slidable_widgetState extends State<flutter_slidable_widget> with SingleTickerProviderStateMixin{
  late final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Slidable(
                key: const ValueKey(0),

                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const ScrollMotion(),

                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  // All actions are defined in the children parameter.
                  children: const [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                      onPressed: doNothing,

                    ),
                    SlidableAction(
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                      onPressed: doNothing,
                    ),
                  ],
                ),

                // The end action pane is the one at the right or the bottom side.
                endActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      // An action can be bigger than the others.
                      flex: 2,
                      backgroundColor: Color(0xFF7BC043),
                      foregroundColor: Colors.white,
                      icon: Icons.archive,
                      label: 'Archive',
                      onPressed: doNothing,
                    ),
                    SlidableAction(

                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: Icons.save,
                      label: 'Save',
                      onPressed: doNothing,
                    ),
                  ],
                ),
                child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text("List item $index")),
              );
            })
      ),
    );
  }


}
void doNothing(BuildContext context) {}
