import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data/models/hdst_model.dart';

class PhotoSwipeIndicator extends StatefulWidget {
  final List<HdstModel> items;

  const PhotoSwipeIndicator({Key? key, required this.items}) : super(key: key);

  @override
  _PhotoSwipeIndicatorState createState() => _PhotoSwipeIndicatorState();
}

class _PhotoSwipeIndicatorState extends State<PhotoSwipeIndicator> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 위쪽 영역에 PageView
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              return Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: Stack(
                      children: [
                        Image.network(
                          'http://192.168.0.18:8081/resource/img/hdst/${item.repesntFileNm}',
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stack) {
                            return Container(
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: Icon(Icons.error, color: Colors.red),
                            );
                          },
                        ),
                        Positioned(
                          bottom: 10,
                          left: 120,
                          child: SmoothPageIndicator(
                            controller: _pageController,
                            count: widget.items.length,
                            effect: ExpandingDotsEffect(
                              activeDotColor: Colors.blue,
                              dotColor: Colors.grey,
                              dotHeight: 10,
                              dotWidth: 10,
                              spacing: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item.hdstNm,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
