import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  const PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Padding Widget')),
      body: Container(
        color: Colors.grey[300],
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                'С отступами',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
