import 'package:flutter/material.dart';
import 'package:module_b_103/presentation/widgets/sliver_app_bar.dart';
import '../providers/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: homeProvider.scrollController,
        slivers: [

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: Text(
                    '2023년 백년가게 선정',
                    style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 22
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('전국의 백년가게',
                      style: TextStyle(color: Colors.blue),)
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.blue,
            title: Image.asset('assets/images/LLSB_BI.png'),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 1000)),
        ],
      ),
    );
  }
}
