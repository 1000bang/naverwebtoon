import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/main_appbar.dart';

import '../components/my_tabbar.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MainAppBar(title: "MY", icons: Icons.search),
          Expanded(child: MyTabBar()),

        ],
      ),
    );
  }
}
