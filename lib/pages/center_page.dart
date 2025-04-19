import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Center Widget')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[300],
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                'Центр',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
