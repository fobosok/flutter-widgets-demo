import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Действие выполнено успешно!'),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'Отмена',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Отменено!'),
                backgroundColor: Colors.red,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar Widget')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSnackbar(context),
          child: Text('Показать SnackBar'),
        ),
      ),
    );
  }
}
