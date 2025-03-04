import 'package:flutter/material.dart';
import 'package:module_b_103/presentation/providers/home_provider.dart';
import 'package:module_b_103/presentation/widgets/go_to.dart';
import 'package:module_b_103/presentation/widgets/hdst_induty.dart';
import 'package:module_b_103/presentation/widgets/page_indicator.dart';
import 'package:module_b_103/presentation/widgets/sliver_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      homeProvider.addListener(updateScreen);
      homeProvider.loadRandomFiveHdst();
      homeProvider.loadInduty();
    });
  }

  @override
  void dispose() {
    super.dispose();
    homeProvider.removeListener(updateScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(pinned: true, delegate: HdstSliverAppBar()),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.blue.shade50,
                  child: Text(
                    '2023년 백년가게 선정',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.circle, size: 6, color: Colors.blue),
                          SizedBox(width: 5),
                          Text(
                            '전국의 백년가게',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        height: 250,
                        child: PhotoSwipeIndicator(
                          items: homeProvider.randomFiveHdst,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: 6, color: Colors.blue),
                          SizedBox(width: 5),
                          Text(
                            '업종별 백년가게',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    HdstInduty(items: homeProvider.induty),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(Icons.circle, size: 6, color: Colors.blue),
                            SizedBox(width: 6),
                            Text(
                              '바로가기',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GoTo(title: '홍보영상', url: 'https://www.sbiz.or.kr/hdst/board/boardList.do?boardCd=VIDEO',),
                          GoTo(title: '우수사례', url: 'https://www.sbiz.or.kr/hdst/board/boardList.do?boardCd=GOODEXAMPLE',),
                          GoTo(title: 'FAQ', url: 'https://www.sbiz.or.kr/hdst/board/boardList.do?boardCd=FAQ',)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
