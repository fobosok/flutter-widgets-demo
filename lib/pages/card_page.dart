import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: List.generate(3, (index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Text('${index + 1}'),
              ),
              title: Text('Заголовок карточки ${index + 1}'),
              subtitle: const Text('Это описание карточки.'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Нажата карточка ${index + 1}')),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
