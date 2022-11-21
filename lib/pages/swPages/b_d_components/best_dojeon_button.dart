import 'package:flutter/material.dart';

import '../../../textstyle.dart';

class BestDojeonButton extends StatelessWidget {
  const BestDojeonButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: EdgeInsets.only(left: 15, top: 10,bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Text("업데이트순", style: h1(mColor: Colors.grey)),
            ),
            SizedBox(width: 5),
            SizedBox(child: Text(" · ", style: h1(mColor: Colors.grey)), width: 10),
            InkWell(
              onTap: () {},
              child: Text("조회순", style: h1(mColor: Colors.grey)),
            ),
            SizedBox(width: 5),
            SizedBox(child: Text(" · ", style: h1(mColor: Colors.grey)), width: 10),
            InkWell(
              onTap: () {},
              child: Text("별점순", style: h1(mColor: Colors.grey)),
            ),
            SizedBox(width: 5),
            SizedBox(child: Text(" · ", style: h1(mColor: Colors.grey)), width: 10),
            InkWell(
              onTap: () {},
              child: Text("제목순", style: h1(mColor: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
