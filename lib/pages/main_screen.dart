import 'package:flutter/material.dart';
import 'package:naver_webtoon/pages/gmpages/recommend_webtoon_page.dart';
import 'package:naver_webtoon/pages/gmpages/webtoon_page.dart';
import 'package:naver_webtoon/pages/show_more.dart';
import 'package:naver_webtoon/pages/swPages/best_dojeon_page.dart';

import 'my_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          WebToonPage(),
          RecommendWebtoonPage(),
          BestDojeonPage(),
          MyScreen(),
          ShowMorePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.black87,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,

        onTap: (value) {
          print(value);
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: naviIcon(Icons.calendar_today, "웹툰"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: naviIcon(Icons.bookmark_add_outlined, "추천완결"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: naviIcon(Icons.stars, "베스트도전"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: naviIcon(Icons.tag_faces, "MY"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: naviIcon(Icons.grid_view, "더보기"),
          ),
        ],
      ),
    );
  }

  Widget naviIcon(IconData iconData, String title) {
    return Container(
      child: Column(
        children: [
          Icon(iconData),
          Text(
            title,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
