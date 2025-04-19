import 'package:flutter/material.dart';

class DataTablePage extends StatelessWidget {
  const DataTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DataTable Widget')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 24,
          columns: const [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Имя')),
            DataColumn(label: Text('Возраст')),
            DataColumn(label: Text('Город')),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Анна')),
              DataCell(Text('23')),
              DataCell(Text('Киев')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Максим')),
              DataCell(Text('31')),
              DataCell(Text('Харьков')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('Олена')),
              DataCell(Text('28')),
              DataCell(Text('Львів')),
            ]),
          ],
        ),
      ),
    );
  }
}
