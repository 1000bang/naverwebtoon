import 'package:flutter/material.dart';
import 'package:naver_webtoon/constrants.dart';
import '../../components/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../models/requestuser.dart';
import '../../models/responseuser.dart';

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

  _showDia(String text) {
    return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            content: Text(text),
          );
        });
  }

  login() async {
    var uri = Uri.parse(BASE_URL + "/login");
    var requestPostObj =
    RequestData(username: idController.text, password: pwController.text);
    var jsonEncode = convert.jsonEncode(requestPostObj.toJsonlogin());
    await http
        .post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode
    )
        .then((res) {
      if (res.statusCode == 200) {
        MyApp.loginStatus = true;
        print("연결성공 : ${res.statusCode}");
        print(res.body);

        convert.jsonDecode(res.body)["data"]["id"];
        var data = ResponseData.fromJson(convert.jsonDecode(res.body));
        MyApp.id = data.username;
        MyApp.email = data.email;
        MyApp.cookie = data.id.toString();
        Navigator.pushNamed(context, "/main");
      }

    }, onError: (error) {
      _showDia("로그인 실패 \n 아이디와 비밀번호를 확인하세요");
      print("실패 : $error");
    });
  }


}
