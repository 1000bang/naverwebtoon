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
            Divider(height: 2, thickness: 3,),
            _settingItem("결제 후 작품 바로보기", true),
            Divider(height: 2, thickness: 3,),
            _settingItem("전체화면으로 작품보기", false),
            Divider(height: 2, thickness: 3,),
            _settingItem("동영상 자동재생", true),

            _settingTitle("알림"),
            Divider(height: 2, thickness: 3,),
            _settingItem("푸시알림", false),
            Divider(height: 2, thickness: 3,),
            _settingItem("회차읽음 정보 ID에 동기화 하기", true),
            Divider(height: 2, thickness: 3,),
            _settingTitle("댓글"),
            Divider(height: 2, thickness: 3,),
            _settingItem("댓글 차단관리", true),
            Divider(height: 2, thickness: 3,),
            _settingTitle("보관함 자동삭제"),
            Divider(height: 2, thickness: 3,),
            _settingItem("이용기간만료 30일 후", true),
            Divider(height: 2, thickness: 3,),
            _settingTitle("고객 도움말"),
            Divider(height: 2, thickness: 3,),
            _settingItem2("웹툰 고객센터", Icons.navigate_next),
            Divider(height: 2, thickness: 3,),
            _settingItem2("오류신고", Icons.navigate_next),
            Divider(height: 2, thickness: 3,),
            _settingItem2("공지사항", Icons.navigate_next),
            Divider(height: 2, thickness: 3,),

          ],
        ),
      ),
    );
  }

  Widget _settingTitle(String text) {
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.grey),
      child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(text)),
    );
  }

  Widget _settingItem(String text, bool isCheck) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
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
    );
  }

  Widget _settingItem2(String text, IconData icons) {

    return Container(
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Icon(icons)
        ],
      ),
    );
  }

}
