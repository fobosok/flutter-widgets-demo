import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String _selectedDifficulty = 'Средний';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Выбери уровень сложности:', style: TextStyle(fontSize: 16)),
            RadioListTile<String>(
              title: Text('Лёгкий'),
              value: 'Лёгкий',
              groupValue: _selectedDifficulty,
              onChanged: (val) => setState(() => _selectedDifficulty = val!),
            ),
            RadioListTile<String>(
              title: Text('Средний'),
              value: 'Средний',
              groupValue: _selectedDifficulty,
              onChanged: (val) => setState(() => _selectedDifficulty = val!),
            ),
            RadioListTile<String>(
              title: Text('Тяжёлый'),
              value: 'Тяжёлый',
              groupValue: _selectedDifficulty,
              onChanged: (val) => setState(() => _selectedDifficulty = val!),
            ),
            SizedBox(height: 24),
            Text('Выбранный уровень: $_selectedDifficulty', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
