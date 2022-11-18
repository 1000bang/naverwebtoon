import 'package:flutter/material.dart';

import '../../size.dart';
import '../../textstyle.dart';



class BestHeaderPopularItem extends StatelessWidget {
  BestHeaderPopularItem({Key? key, required this.id}) : super(key: key);

  final id;
  final popularList = [
    "뷰티풀.png",
    "윈드.png",
    "장씨.png"
  ];
  final popularExplain = [
    "카페 타이쿤",
    "일렉트릭 마이 라이프",
    "와더풀하우스 신혼생활"
  ];
  final popularId = [
    "gusw****",
    "an****",
    "cp****",
  ];

  @override
  Widget build(BuildContext context) {
    double headerPopularItemWidth = getBodyWidth(context) / 3 - 5;
    return Container(
      constraints: BoxConstraints(
        minWidth: 100,
      ),
      child: SizedBox(
        width: headerPopularItemWidth,
        child: Column(
          children: [
            _buildBestPopularItemImage(),
            _buildBestPopularItemexplain(),
          ],
        ),
      ),
    );
  }

  Widget _buildBestPopularItemImage(){
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_20,
        ),
      ],
    );
  }

  Widget _buildBestPopularItemexplain(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              popularExplain[id],
              style: h1(),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              popularId[id],
              style: h0(),
            ),
          ],
        ),
        const SizedBox(
        ),
      ],
    );
  }



}
