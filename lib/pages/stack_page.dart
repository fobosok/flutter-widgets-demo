import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Widget')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue[300],
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.green[300],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red[300],
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Text(
                '🧱 Stack!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}