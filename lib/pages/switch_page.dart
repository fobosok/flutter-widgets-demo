import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _wifiEnabled = true;
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Switch Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SwitchListTile(
              title: Text('Wi-Fi'),
              subtitle: Text(_wifiEnabled ? 'Включено' : 'Выключено'),
              value: _wifiEnabled,
              onChanged: (bool value) {
                setState(() {
                  _wifiEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Тёмная тема'),
              subtitle: Text(_darkMode ? 'Активна' : 'Неактивна'),
              value: _darkMode,
              onChanged: (bool value) {
                setState(() {
                  _darkMode = value;
                });
              },
              secondary: Icon(Icons.nightlight_round),
            ),
          ],
        ),
      ),
    );
  }
}
