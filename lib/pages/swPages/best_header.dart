import 'package:flutter/material.dart';


import '../../size.dart';
import 'best_header_popular.dart';
import 'best_header_popular_text.dart';
import 'best_header_popular_item.dart';
import 'best_mid_appbar.dart';

class BestHeader extends StatelessWidget {
  const BestHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);

    return Align(
      child: SizedBox(
        width: double.infinity, // 꽉차게
        height: 400,
        child: Column(
          children: [
            BestHeaderPopularText(),
            BestHeaderPopular(),
          ],
        ),
      ),
    );
  }

  AppBar _buildBestHeaderAppBar(){
    return AppBar(
      backgroundColor: Colors.white,

    );
  }
}
