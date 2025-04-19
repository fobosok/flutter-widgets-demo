import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Widget')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => const DetailPage(),
            ));
          },
          child: Hero(
            tag: 'flutter-logo',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/21w.png', width: 100),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Детали')),
      body: Center(
        child: Hero(
          tag: 'flutter-logo',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset('assets/21w.png', width: 300),
          ),
        ),
      ),
    );
  }
}
