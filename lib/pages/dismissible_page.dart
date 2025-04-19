import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({super.key});

  @override
  State<DismissiblePage> createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  final List<String> _items = List.generate(10, (i) => 'Элемент ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible Widget')),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];

          return Dismissible(
            key: ValueKey(item),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (_) {
              setState(() => _items.removeAt(index));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$item удалён')),
              );
            },
            child: ListTile(
              title: Text(item),
              trailing: const Icon(Icons.arrow_back_ios_new),
            ),
          );
        },
      ),
    );
  }
}
