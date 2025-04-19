import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(20, (i) => 'Элемент №${i + 1}');

    return Scaffold(
      appBar: AppBar(title: const Text('ListView + ListTile')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(items[index]),
            subtitle: Text('Описание элемента'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Вы выбрали ${items[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
