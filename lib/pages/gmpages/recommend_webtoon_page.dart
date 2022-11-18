import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildTitleIntroduction(context),
          RecommendDropDownButton(),
        ],
      ),
    );
  }

  _buildTitleIntroduction(context) {
    return TitleImageSlider(
      firstImage: '광고',
      secondImage: '외지주광고',
      thirdImage: 'info1',
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0),
      title: Text(
        '추천완결',
        style: TextStyle(fontSize: 20, color: Colors.black),
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
