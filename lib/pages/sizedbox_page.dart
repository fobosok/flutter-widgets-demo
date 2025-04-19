import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  const SizedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Пример фиксированного SizedBox'),
            SizedBox(height: 16),
            SizedBox(
              width: 200,
              height: 100,
              child: Container(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    '200×100',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Text('Пример пустого SizedBox как отступа'),
            Row(
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                SizedBox(width: 20), // отступ между
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
