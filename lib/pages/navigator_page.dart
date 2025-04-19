import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  void _goToSecondPage(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SecondPage(),
      ),
    );

    if (result != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Получено: $result')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigator Widget')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _goToSecondPage(context),
          child: Text('Перейти на второй экран'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Второй экран')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Привет с экрана 2!');
          },
          child: Text('Вернуться и передать результат'),
        ),
      ),
    );
  }
}
