import 'package:flutter/material.dart';

class TooltipPage extends StatelessWidget {
  const TooltipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tooltip Widget')),
      body: Center(
        child: Tooltip(
          message: 'Это кнопка отправки',
          waitDuration: Duration(milliseconds: 500),
          showDuration: Duration(seconds: 2),
          textStyle: TextStyle(color: Colors.white),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(4),
          ),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.send),
            label: Text('Отправить'),
          ),
        ),
      ),
    );
  }
}
