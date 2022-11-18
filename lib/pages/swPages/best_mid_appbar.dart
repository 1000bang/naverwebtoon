import 'package:flutter/material.dart';

class BestMidAppbar extends StatefulWidget {
  const BestMidAppbar({Key? key}) : super(key: key);

  @override
  State<BestMidAppbar> createState() => _BestMidAppbarState();
}

class _BestMidAppbarState extends State<BestMidAppbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DefaultTabController(length: 14, child: Scaffold(
          appBar: TabBar(tabs: [
            Tab(text: "dkd",)
          ],),
        ),
        ),
      ],
    );
  }
}
