import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatefulWidget {
  const ReorderableListViewPage({super.key});

  @override
  State<ReorderableListViewPage> createState() => _ReorderableListViewPageState();
}

class _ReorderableListViewPageState extends State<ReorderableListViewPage> {
  final List<String> _items = List.generate(10, (i) => 'Элемент ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ReorderableListView')),
      body: ReorderableListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            key: ValueKey(_items[index]),
            title: Text(_items[index]),
            leading: ReorderableDragStartListener(
              index: index,
              child: const Icon(Icons.drag_handle),
            ),
            tileColor: Colors.grey[100],
          );
        },
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) newIndex -= 1;
            final item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
