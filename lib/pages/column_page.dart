import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          color: Colors.grey[300],
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.cloud, size: 40, color: Colors.blue),
              Icon(Icons.wifi, size: 40, color: Colors.green),
              Icon(Icons.battery_full, size: 40, color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
