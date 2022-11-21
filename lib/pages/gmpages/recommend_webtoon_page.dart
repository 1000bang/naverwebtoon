import 'package:flutter/material.dart';

import '../../components/main_appbar.dart';
import '../../components/recommend_drop_down_button.dart';
import '../../components/title_image.dart';

class RecommendWebtoonPage extends StatefulWidget {
  const RecommendWebtoonPage({Key? key}) : super(key: key);

  @override
  State<RecommendWebtoonPage> createState() => _RecommendWebtoonPageState();
}

class _RecommendWebtoonPageState extends State<RecommendWebtoonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          MainAppBar(title: "추천완결", icons: Icons.search),
          _buildTitleIntroduction(context),
          RecommendDropdownButton(),
        ],
      ),
    );
  }

  _buildTitleIntroduction(context) {
    return TitleImageSlider(
      firstImage: 'info1',
      secondImage: 'info2',
      thirdImage: 'info3',
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(
          '추천완결',
          style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
