import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(20, (i) => 'Тег ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: const Text('Wrap Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: items.map((label) {
            return Chip(
              label: Text(label),
              backgroundColor: Colors.deepPurple.shade100,
            );
          }).toList(),
        ),
      ),
    );
  }
}
