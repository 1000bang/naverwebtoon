import 'package:flutter/material.dart';

class RecommendDropDownButton extends StatefulWidget {
  const RecommendDropDownButton({Key? key}) : super(key: key);

  @override
  State<RecommendDropDownButton> createState() =>
      _RecommendDropDownButtonState();
}

class _RecommendDropDownButtonState extends State<RecommendDropDownButton> {
  final _vauleList = [
    '인기순',
    '여성 인기순',
    '남성 인기순',
    '최신순',
  ];
  var firstList = '인기순';

  final _themeList = [
    '전체 장르',
    '드라마',
    '로맨스',
    '학원/액션',
    '판타지/무협',
    '스릴러',
    '일상/개그',
  ];

  var firstThemeList = '전체 장르';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // _buildRecommendDownButton(str: firstList, list: _vauleList),
          // _buildRecommendDownButton(str: firstThemeList, list: _themeList),
        ],
      ),
    );
  }

  _buildRecommendDownButton({str, list}) {
    return DropdownButton(
      value: str,
      items:
      list.map((e) {
        return DropdownMenuItem(value: e, child: Text(e));
      }).toList(),
      onChanged: (value) {
        setState(() {
          str = value!;
        });
      },
    );
  }
}
