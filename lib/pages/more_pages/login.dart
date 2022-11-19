import 'package:flutter/material.dart';
import 'package:naver_webtoon/constrants.dart';
import '../../components/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../components/green_button.dart';
import '../../components/text_field.dart';
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
    body: ListView(
      children: [Center(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image.asset("assets/logo.png", height: 100, width: 180,),
            SizedBox(height: 20,),
            TextFields(text: "아이디", ispw: false, controller: idController),
            SizedBox(height:10,),
            TextFields(text: "비밀번호", ispw: true, controller: pwController),
            SizedBox(height:30,),
            InkWell(
                onTap: () {login();},
                child: GreenButton(text: "로그인")),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(height: 20, thickness: 2,),
            ),
            InkWell(
                onTap: (){setState(() {
                  Navigator.pushNamed(context, "/join");
                });},
                child: Text("회원가입")),
          ],
        ),
      ),
    ]),

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
