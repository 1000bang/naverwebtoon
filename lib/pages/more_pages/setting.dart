import 'package:flutter/material.dart';

import '../../components/appbar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(
        title: "설정",
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _settingTitle("부가기능"),
            _settingItem("결제 후 작품 바로보기", true),
            _settingItem("전체화면으로 작품보기", false),
            _settingItem("동영상 자동재생", true),

            _settingTitle("알림"),
            _settingItem("푸시알림", false),
            _settingItem("회차읽음 정보 ID에 동기화 하기", true),
            _settingTitle("댓글"),
            _settingItem("댓글 차단관리", true),
            _settingTitle("보관함 자동삭제"),
            _settingItem("이용기간만료 30일 후", true),
            _settingTitle("고객 도움말"),
            _settingItem2("웹툰 고객센터", Icons.navigate_next),
            _settingItem2("오류신고", Icons.navigate_next),
            _settingItem2("공지사항", Icons.navigate_next),
            _settingTitle("정보"),
            _settingItem3("프로그램 정보 "),
          ],
        ),
      ),
    );
  }

  Widget _settingTitle(String text) {
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1)),
      alignment: Alignment.centerLeft,
      child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(text)),
    );
  }

  Widget _settingItem(String text, bool isCheck) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text),
            ),
            Checkbox(
                value: isCheck,
                onChanged: (value) {
                  setState(
                    () {
                      isCheck = value!;
                    },
                  );
                })
          ],
        ),
        Divider(height: 2, thickness: 1,),
      ],
    );
  }

  Widget _settingItem2(String text, IconData icons) {

    return Column(
      children: [
        Container(
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text),
              ),
              Icon(icons)
            ],
          ),
        ),
        Divider(height: 2, thickness: 1),
      ],
    );
  }

  Widget _settingItem3(String text) {

    return Column(
      children: [
        Container(
          height: 45,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text),
              ),
              Text("현재버전 2.2.1", style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),

      ],
    );
  }

}
