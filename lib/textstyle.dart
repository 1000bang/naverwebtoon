import 'package:flutter/material.dart';

TextStyle h0({Color mColor = Colors.grey}){
  return TextStyle(fontSize: 8,  color: Colors.grey);
}

TextStyle h1({Color mColor = Colors.black}){
  return TextStyle(fontSize: 10,  color: mColor);
}

TextStyle h2({Color mColor = Colors.black}){
  return TextStyle(fontSize: 12,  color: mColor);
}

TextStyle h3({Color mColor = Colors.black}){
  return TextStyle(fontSize: 14, color: mColor);
}

TextStyle h4({Color mColor = Colors.black}){
  return TextStyle(fontSize: 16, color: mColor);
}

TextStyle h5({Color mColor = Colors.black}){
  return TextStyle(fontSize: 18, color: mColor);
}

TextStyle h6({Color mColor = Colors.black}){
  return TextStyle(fontSize: 20, color: mColor);
}

TextStyle r0({Color mColor = Colors.redAccent}){
  return TextStyle(fontSize: 10, color: mColor);
}

Icon ratingStar({Color mColor = Colors.redAccent}){
  return Icon(Icons.star, color: mColor);
}