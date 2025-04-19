import 'package:flutter/material.dart';

class InkWellPage extends StatelessWidget {
  const InkWellPage({Key? key}) : super(key: key);

  void _handleTap(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Нажато!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InkWell + Material')),
      body: Center(
        child: Material(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () => _handleTap(context),
            borderRadius: BorderRadius.circular(12),
            splashColor: Colors.purpleAccent,
            highlightColor: Colors.deepPurpleAccent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Text(
                'Нажми меня',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
