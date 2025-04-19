import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _volume = 0.5;
  double _brightness = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Widget')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Громкость: ${(_volume * 100).round()}%'),
            Slider(
              value: _volume,
              onChanged: (newVal) {
                setState(() {
                  _volume = newVal;
                });
              },
              min: 0,
              max: 1,
              divisions: 10,
              label: '${(_volume * 100).round()}%',
            ),
            SizedBox(height: 24),
            Text('Яркость: ${_brightness.round()}%'),
            Slider(
              value: _brightness,
              onChanged: (newVal) {
                setState(() {
                  _brightness = newVal;
                });
              },
              min: 0,
              max: 100,
              divisions: 20,
              label: '${_brightness.round()}%',
              activeColor: Colors.amber,
              inactiveColor: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
