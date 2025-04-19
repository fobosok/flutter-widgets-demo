import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({Key? key}) : super(key: key);

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // нельзя закрыть тапом вне окна
      builder: (context) {
        return AlertDialog(
          title: Text('Удалить элемент?'),
          content: Text('Вы уверены, что хотите удалить этот элемент?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Отмена'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Удалено')),
                );
              },
              child: Text('Удалить'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDialog Widget')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showDialog(context),
          child: Text('Показать диалог'),
        ),
      ),
    );
  }
}
