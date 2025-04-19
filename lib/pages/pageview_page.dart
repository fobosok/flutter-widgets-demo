import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Color> _colors = [Colors.red, Colors.green, Colors.blue];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageView Widget')),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _colors.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  color: _colors[index],
                  child: Center(
                    child: Text(
                      'Страница ${index + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_colors.length, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 16 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index ? Colors.black : Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
