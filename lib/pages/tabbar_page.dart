import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // количество вкладок
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Widget'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat), text: 'Чаты'),
              Tab(icon: Icon(Icons.group), text: 'Контакты'),
              Tab(icon: Icon(Icons.settings), text: 'Настройки'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Раздел: Чаты')),
            Center(child: Text('Раздел: Контакты')),
            Center(child: Text('Раздел: Настройки')),
          ],
        ),
      ),
    );
  }
}
