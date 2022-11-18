import 'package:flutter/material.dart';


class InnerAppBar extends StatelessWidget with PreferredSizeWidget{
  InnerAppBar({Key? key, required this.title}) : super(key: key);
String title;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      leading: null,
      title: Text(title, style: TextStyle(color: Colors.white)),

    );
  }
}


