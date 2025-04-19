import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Простий текст'),
            SizedBox(height: 16),
            Text(
              'З кольором і розміром',
              style: TextStyle(fontSize: 20, color: Colors.deepPurple),
            ),
            SizedBox(height: 16),
            Text(
              'Жирний, курсивний, підкреслений',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Центрований текст з обмеженою кількістю рядків. Якщо текст занадто довгий, він буде обрізаний.',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
