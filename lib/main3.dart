import 'package:flutter/material.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({Key? key}) : super(key: key);

  @override
  _MyImageSliderState createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final List<String> _imageUrls = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/300/400',
    'https://picsum.photos/400/500',
    'https://picsum.photos/500/600',
    'https://picsum.photos/600/700',
  ];

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: PageView(
                onPageChanged: (int page) {
                  setState(() {
                    _currentPageIndex = page;
                  });
                },
                children: _imageUrls.map((imageUrl) {
                  return Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Image ${_currentPageIndex + 1} of ${_imageUrls.length}',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}