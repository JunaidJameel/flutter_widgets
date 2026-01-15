import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            'Data Table',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 20),
          Theme(
            data: Theme.of(context).copyWith(
                dividerTheme: DividerThemeData(color: Colors.black12)),
            child: DataTable(
              headingTextStyle:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              dataTextStyle:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Role')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('John')),
                    DataCell(Text('23')),
                    DataCell(Text('Developer')),
                  ],
                ),
                DataRow(cells: [
                  DataCell(Text('Smith')),
                  DataCell(Text('25')),
                  DataCell(Text('Manager')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raza')),
                  DataCell(Text('21')),
                  DataCell(Text('Designer')),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
