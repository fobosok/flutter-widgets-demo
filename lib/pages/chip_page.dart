import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget {
  const ChipPage({super.key});

  @override
  State<ChipPage> createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {
  String _selectedChoice = 'Все';
  final List<String> _filters = ['Книги', 'Фильмы', 'Игры'];
  final Set<String> _selectedFilters = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chip Widgets')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('ChoiceChip (выбор одного):'),
            Wrap(
              spacing: 8,
              children: ['Все', ..._filters].map((label) {
                return ChoiceChip(
                  label: Text(label),
                  selected: _selectedChoice == label,
                  onSelected: (_) => setState(() => _selectedChoice = label),
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            const Text('FilterChip (множественный выбор):'),
            Wrap(
              spacing: 8,
              children: _filters.map((label) {
                return FilterChip(
                  label: Text(label),
                  selected: _selectedFilters.contains(label),
                  onSelected: (selected) {
                    setState(() {
                      selected
                          ? _selectedFilters.add(label)
                          : _selectedFilters.remove(label);
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            const Text('Просто Chip с аватаром и удалением:'),
            Chip(
              label: const Text('Flutter'),
              avatar: const CircleAvatar(child: Text('F')),
              onDeleted: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Chip удалён')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
