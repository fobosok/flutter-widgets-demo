import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.deepPurple;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  void _animate() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 150 : 100;
      _color = _color == Colors.deepPurple ? Colors.orange : Colors.deepPurple;
      _borderRadius = _borderRadius == BorderRadius.circular(8)
          ? BorderRadius.circular(50)
          : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: GestureDetector(
          onTap: _animate,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            child: const Center(
              child: Text('Нажми', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
