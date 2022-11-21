import 'package:flutter/material.dart';

import '../../components/main_appbar.dart';
import 'b_d_components/best_dojeon_header.dart';
import 'b_d_components/best_dojeon_tapbar.dart';

class BestDojeonPage extends StatelessWidget {
  const BestDojeonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          MainAppBar(title: "베스트 도전", icons: Icons.search),
          BestDojeonHeader(),
          BestDojeonTapbar(),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "베스트도전",
        style: TextStyle(color: Colors.black87),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(Icons.search, color: Colors.black87),
        ),
      ],
    );
  }
}
