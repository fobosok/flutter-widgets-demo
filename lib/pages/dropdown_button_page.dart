import 'package:flutter/material.dart';

class DropdownButtonPage extends StatefulWidget {
  const DropdownButtonPage({Key? key}) : super(key: key);

  @override
  State<DropdownButtonPage> createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {
  final List<String> _options = ['Легкий', 'Средний', 'Тяжёлый'];
  String _selected = 'Средний';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropdownButton Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Выбери уровень сложности:'),
            SizedBox(height: 8),
            DropdownButton<String>(
              value: _selected,
              items: _options.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selected = newValue!;
                });
              },
            ),
            SizedBox(height: 24),
            Text('Выбранный: $_selected', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
