import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({Key? key}) : super(key: key);

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _isChecked1 = false;
  bool _isChecked2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text('Согласен с условиями'),
              value: _isChecked1,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked1 = newValue ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Получать уведомления'),
              value: _isChecked2,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked2 = newValue ?? false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
