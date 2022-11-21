import 'package:flutter/material.dart';

import '../../../textstyle.dart';

class BestDojeonHeader extends StatelessWidget {
  const BestDojeonHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "오늘의 인기 베스트",
            style: h6(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTodayBest("bdheader1", "똥꼬발랄댕댕이", "dldu****"),
              _buildTodayBest("bdheader2", "집에서 뒹굴뒹굴", "koal****"),
              _buildTodayBest("bdheader3", "일상과 망상", "kopj****"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodayBest(var img, var title, var id) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/bestdojeon/$img.jpg",
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
          ),
          SizedBox(height: 5),
          Text(id, style: h0()),
        ],
      ),
    );
  }
}
