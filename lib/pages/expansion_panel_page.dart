import 'package:flutter/material.dart';

class ExpansionPanelPage extends StatefulWidget {
  const ExpansionPanelPage({super.key});

  @override
  State<ExpansionPanelPage> createState() => _ExpansionPanelPageState();
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  final List<ItemData> _items = [
    ItemData(header: 'Что такое Flutter?', body: 'Flutter — это фреймворк от Google для создания кроссплатформенных приложений.'),
    ItemData(header: 'Что такое Widget?', body: 'Widget — это базовый строительный блок интерфейса во Flutter.'),
    ItemData(header: 'Как работает hot reload?', body: 'Hot reload позволяет быстро вносить изменения в код без перезапуска приложения.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ExpansionPanelList Widget')),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              _items[index].isExpanded = !isExpanded;
            });
          },
          children: _items.map<ExpansionPanel>((item) {
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text(item.header),
                );
              },
              body: ListTile(
                title: Text(item.body),
              ),
              isExpanded: item.isExpanded,
              canTapOnHeader: true,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ItemData {
  final String header;
  final String body;
  bool isExpanded;

  ItemData({
    required this.header,
    required this.body,
    this.isExpanded = true,
  });
}
