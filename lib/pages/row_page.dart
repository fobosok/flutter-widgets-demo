import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Розміщення елементів по горизонталі:'),
            SizedBox(height: 16),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star, size: 40, color: Colors.blue),
                  Icon(Icons.favorite, size: 40, color: Colors.red),
                  Icon(Icons.settings, size: 40, color: Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
