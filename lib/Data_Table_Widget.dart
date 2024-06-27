import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data_table_widget extends StatefulWidget {
  const data_table_widget({super.key});

  @override
  State<data_table_widget> createState() => _data_table_widgetState();
}

class _data_table_widgetState extends State<data_table_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          sortColumnIndex: 0  ,
          sortAscending: true,
          columns: [
            DataColumn(
              label: Text("Name"),
            ),

            DataColumn(
              label: Text("Year"),
              numeric: true
            ),
            DataColumn(
              label: Text("Lan."),
            ),
          ],
          rows: [
            DataRow(
              selected: true,
              cells: [
                DataCell(
                  Text("Dash"),
                  // placeholder: true,
                  // showEditIcon: true
                ),
                DataCell(
                  Text("2018"),
                ),
                DataCell(
                  Text("Java"),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Gopher"),
                ),
                DataCell(
                  Text("2009"),
                ),
                DataCell(
                  Text("Xml"),
                ),
              ],
            ),
            DataRow(
              selected: true,
              cells: [
                DataCell(
                  Text("Dash"),
                  // placeholder: true,
                  // showEditIcon: true
                ),
                DataCell(
                  Text("2018"),
                ),
                DataCell(
                  Text("Java"),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Gopher"),
                ),
                DataCell(
                  Text("2009"),
                ),
                DataCell(
                  Text("Xml"),
                ),
              ],
            ),
            DataRow(
              selected: true,
              cells: [
                DataCell(
                  Text("Dash"),
                  // placeholder: true,
                  // showEditIcon: true
                ),
                DataCell(
                  Text("2018"),
                ),
                DataCell(
                  Text("Java"),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Gopher"),
                ),
                DataCell(
                  Text("2009"),
                ),
                DataCell(
                  Text("Xml"),
                ),
              ],
            ),
            DataRow(
              selected: true,
              cells: [
                DataCell(
                  Text("Dash"),
                  // placeholder: true,
                  // showEditIcon: true
                ),
                DataCell(
                  Text("2018"),
                ),
                DataCell(
                  Text("Java"),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Gopher"),
                ),
                DataCell(
                  Text("2009"),
                ),
                DataCell(
                  Text("Xml"),
                ),
              ],
            ),
            DataRow(
              selected: true,
              cells: [
                DataCell(
                  Text("Dash"),
                  // placeholder: true,
                  // showEditIcon: true
                ),
                DataCell(
                  Text("2018"),
                ),
                DataCell(
                  Text("Java"),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Gopher"),
                ),
                DataCell(
                  Text("2009"),
                ),
                DataCell(
                  Text("Xml"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
