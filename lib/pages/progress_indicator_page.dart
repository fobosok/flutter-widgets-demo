import 'package:flutter/material.dart';

class ProgressIndicatorPage extends StatefulWidget {
  const ProgressIndicatorPage({Key? key}) : super(key: key);

  @override
  State<ProgressIndicatorPage> createState() => _ProgressIndicatorPageState();
}

class _ProgressIndicatorPageState extends State<ProgressIndicatorPage> {
  double _progress = 0.0;

  void _startProgress() {
    _progress = 0.0;
    Future.doWhile(() async {
      await Future.delayed(Duration(milliseconds: 100));
      setState(() {
        _progress += 0.02;
        if (_progress > 1.0) _progress = 1.0;
      });
      return _progress < 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Indicators')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Линейный прогресс:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: _progress,
              minHeight: 8,
              color: Colors.teal,
              backgroundColor: Colors.teal[100],
            ),
            SizedBox(height: 24),
            Text('Круговой прогресс:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            CircularProgressIndicator(
              value: _progress,
              strokeWidth: 6,
              color: Colors.deepPurple,
              backgroundColor: Colors.deepPurple[100],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: _startProgress,
              child: Text('Запустить прогресс'),
            ),
          ],
        ),
      ),
    );
  }
}
