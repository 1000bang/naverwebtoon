import 'package:flutter/material.dart';

import '../../textstyle.dart';


class BestHeaderPopularText extends StatelessWidget {
  const BestHeaderPopularText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Column(
            children: [
              Text("오늘의 인기 베스트", style: h2(),),
            ],
          ),
        )
      ],
    );
  }
}
