import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.teal,
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('GridView Widget')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: colors.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,         // 2 элемента в строке
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,       // квадрат
          ),
          itemBuilder: (context, index) {
            return Container(
              color: colors[index],
              child: Center(
                child: Text(
                  'Элемент ${index + 1}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
