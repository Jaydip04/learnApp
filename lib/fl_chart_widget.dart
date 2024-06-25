import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fl_Chart_Widget extends StatefulWidget {
  const Fl_Chart_Widget({super.key});

  @override
  State<Fl_Chart_Widget> createState() => _Fl_Chart_WidgetState();
}

class _Fl_Chart_WidgetState extends State<Fl_Chart_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        PieChart(PieChartData(
          sections: [
            PieChartSectionData(
                value: 10,
                title: "10%",
                showTitle: true,
                radius: 70,
                color: Colors.red),
            PieChartSectionData(
                value: 27,
                title: "27%",
                showTitle: true,
                radius: 70,
                color: Colors.blue),
            PieChartSectionData(
                value: 38,
                title: "38%",
                showTitle: true,
                radius: 70,
                color: Colors.indigo),
            PieChartSectionData(
                value: 45,
                title: "45%",
                showTitle: true,
                radius: 70,
                color: Colors.green),
            PieChartSectionData(
                value: 80,
                title: "80%",
                showTitle: true,
                radius: 70,
                color: Colors.purple),
          ],
        )),
      ),
    );
  }
}
