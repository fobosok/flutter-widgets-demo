import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  final String _networkImage =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Widget')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Изображение из сети:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Image.network(
              _networkImage,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 24),
            Text('Изображение из ассетов:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Image.asset(
              'assets/flutter_logo.png',
              height: 100,
            ),
            SizedBox(height: 24),
            Text('Скруглённое изображение:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                _networkImage,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
