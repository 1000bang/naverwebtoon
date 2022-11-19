import 'package:flutter/material.dart';
import 'package:naver_webtoon/constrants.dart';

class GreenButton extends StatelessWidget {
   GreenButton({Key? key, required this.text}) : super(key: key);
String text = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kAccentColor,
        ),
        width: 300,
        height: 50,
        child: Center(
          child: Text(
              text,
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),
        )),
    );
  }
}
