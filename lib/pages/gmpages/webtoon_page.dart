import 'package:flutter/material.dart';

import '../../components/title_image.dart';
import '../../components/webtoon_tabbar.dart';



class WebToonPage extends StatefulWidget {
  const WebToonPage({Key? key}) : super(key: key);

  @override
  State<WebToonPage> createState() => _WebToonPageState();
}

class _WebToonPageState extends State<WebToonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildTitleIntroduction(context),
          Expanded(
            child: MyTapBar(),
          ),
        ],
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.cookie, color: Colors.orange),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 13.0),
          child: InkWell(
            onTap: () {
              print('눌러짐 !!');
            },
            child: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  _buildTitleIntroduction(context) {
    return TitleImageSlider(
      firstImage: 'info1',
      secondImage: 'info2',
      thirdImage: 'info3',
    );
  }
}
