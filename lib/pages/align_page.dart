import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align Widget')),
      body: Center(
        child: Container(
          color: Colors.grey[300],
          width: 300,
          height: 300,
          child: Align(
            alignment: Alignment.bottomRight,

            child: Container(
              width: 80,
              height: 80,
              color: Colors.blue,
              child: Center(child: Text('Box', style: TextStyle(color: Colors.white))),
            ),
          ),
        ),
      ),
    );
  }
}
