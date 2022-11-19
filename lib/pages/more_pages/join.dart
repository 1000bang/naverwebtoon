import 'package:flutter/material.dart';
import 'package:naver_webtoon/constrants.dart';
import '../../components/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../components/green_button.dart';
import '../../components/text_field.dart';
import '../../models/requestuser.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({Key? key}) : super(key: key);

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  TextEditingController idController = new TextEditingController();
  TextEditingController pwController = new TextEditingController();
  TextEditingController pwcheckController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();


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
              SizedBox(height:10,),
              TextFields(text: "비밀번호 확인", ispw: true, controller: pwcheckController),
              SizedBox(height:10,),
              TextFields(text: "이메일", ispw: false, controller: emailController),
              SizedBox(height:30,),
              InkWell(
                  onTap: () {
                    if(pwController.text != pwcheckController.text){
                      _showDia("비밀번호가 일치하지 않습니다");
                    }else if(emailController.text.length < 8){
                      _showDia("이메일주소가 너무 짧습니다.\n 8자 이상으로 입력하세요");
                    }else{
                      join();
                    }
                    },
                  child: GreenButton(text: "회원가입")),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(height: 20, thickness: 2,),
              ),
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

  join() async {
    var uri = Uri.parse(BASE_URL + "/join");
    var requestPostObj = RequestData(
        username: idController.text,
        email: emailController.text,
        password: pwController.text);
    var jsonEncode = convert.jsonEncode(requestPostObj.toJsonJoin());
    await http
        .post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode,
    )
        .then((res) {
      if(res.statusCode == 500){
        _showDia("아이디 중복 ");
      }else if(res.statusCode == 200){
        _showDia("회원가입 성공");
        Navigator.pushNamed(context, "/login");
      }else {
        _showDia("회원가입 실패 \n 에러코드 ${res.statusCode}");
      }

    }, onError: (error) {
      _showDia("회원가입 실패 \n 에러코드 ${error}");
        });
  }


}
