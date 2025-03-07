import 'package:flutter/material.dart';
import 'package:module_b_103/presentation/screens/add_screen.dart';
import 'package:module_b_103/presentation/screens/favorite_screen.dart';
import 'package:module_b_103/presentation/screens/home_content.dart';
import 'package:module_b_103/presentation/screens/search_screen.dart';
import 'package:module_b_103/presentation/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeContent(),
    SearchScreen(),
    AddScreen(),
    FavoriteScreen(),
    SettingsScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff2699FB),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "백년가게"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "검색"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "좋아요"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}

