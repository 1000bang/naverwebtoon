import 'package:flutter/material.dart';
import 'package:naver_webtoon/constrants.dart';
import '../../components/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../main.dart';
import '../../main.dart';
import '../../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  TextEditingController idController = new TextEditingController();
  TextEditingController pwController = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: InnerAppBar(title: "",),
    body: Center(
      child: Column(
        children: [
          SizedBox(height: 70,),
          Image.asset("assets/logo.png", height: 100, width: 180,),
          SizedBox(height: 20,),
          _textField("ID", idController),
          SizedBox(height:10,),
          _textField("PassWord", pwController),
          SizedBox(height:30,),
          _button(kAccentColor, "로그인"),
        ],
      ),
    ),

    );

  }

  Widget _textField(String text, TextEditingController controller) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Please $text here ',
            contentPadding: EdgeInsets.all(1)),
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget _button(Color color, String text) {
    return InkWell(
      onTap: (){
        login();

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
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
      ),
    );
  }

  // _showDia(String text) {

  login() async {
    var uri = Uri.parse(BASE_URL + "/login");

    await http
        .post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: {"username" : "$idController.text",
        "password" : "$pwController.text"}
    )
        .then((res) {
      if (res.statusCode == 200) {
        MyApp.loginStatus = true;
        print("연결성공 : ${res.statusCode}");
        print(res.body);
        Navigator.pushNamed(context, "/main");
      }

    }, onError: (error) {
      print("실패 : $error");
    });
  }


}
