import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  void _showSnack(BuildContext context, String message) {
    Navigator.pop(context); // закрываем Drawer
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer Widget')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle, size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text('Привет, Дмитрий!',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Главная'),
              onTap: () => _showSnack(context, 'Главная'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Настройки'),
              onTap: () => _showSnack(context, 'Настройки'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Выйти'),
              onTap: () => _showSnack(context, 'Выход выполнен'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Проведи вправо или нажми ☰, чтобы открыть Drawer'),
      ),
    );
  }
}
