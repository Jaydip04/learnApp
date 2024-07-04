import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetTest extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() => _WidgetTestState();
}

class _WidgetTestState extends State<WidgetTest> {
  Set<String> _selected = {'Index'};
  void updateSelected (Set<String> newSelection){
    setState(() {
      _selected = newSelection;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SegmentedButton(
          multiSelectionEnabled: false,
          segments: <ButtonSegment<String>>[
            ButtonSegment(value: 'Index', label: Text('Index')),
            ButtonSegment(value: 'Primary', label: Text('Primary')),
            ButtonSegment(
              value: 'Everthing Else',
              label: Text('Everthing Else'),
            ),
          ],
          selected: _selected,
          onSelectionChanged: updateSelected,
        ),
      ),
    );
  }
}
