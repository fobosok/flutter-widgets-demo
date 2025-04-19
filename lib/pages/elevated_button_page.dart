import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatelessWidget {
  const ElevatedButtonPage({Key? key}) : super(key: key);

  void _handleClick(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ElevatedButton Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => _handleClick(context, 'Кнопка нажата!'),
              child: Text('Обычная кнопка'),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => _handleClick(context, 'С иконкой нажата!'),
              icon: Icon(Icons.thumb_up),
              label: Text('С иконкой'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: null,
              child: Text('Отключена (null onPressed)'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _handleClick(context, 'Стилизация работает'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('Кастомная кнопка'),
            ),
          ],
        ),
      ),
    );
  }
}
