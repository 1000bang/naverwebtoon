import 'package:flutter/material.dart';


import 'swPages/best_body.dart';
import 'swPages/best_header.dart';
import 'swPages/best_header_popular.dart';


class BestMainPage extends StatelessWidget {
  const BestMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: ListView(   // list view???
        children: [
          BestHeader(),
          BestBody(),
        ],
      ),
    );
  }

}
