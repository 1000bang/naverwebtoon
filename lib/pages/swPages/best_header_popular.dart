import 'package:flutter/material.dart';

import '../../size.dart';
import 'best_header_popular_item.dart';




class BestHeaderPopular extends StatelessWidget {
  const BestHeaderPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPopularItemList(),
        ],
      ),
    );
  }// end build

  Widget _buildPopularItemList(){
    return Wrap(
      children: [
        BestHeaderPopularItem(id: 0),
        SizedBox(width: 30,),
        BestHeaderPopularItem(id: 1),
        SizedBox(width: 30,),
        BestHeaderPopularItem(id: 2),

      ],
    );
  }
}

