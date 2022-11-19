import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  TextFields({Key? key, required this.text, required this.ispw, required this.controller}) : super(key: key);
  String text ='';
  bool ispw = true;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: controller,
        obscureText: ispw ==  true ? true: false,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '$text',
            contentPadding: EdgeInsets.all(1)),
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
