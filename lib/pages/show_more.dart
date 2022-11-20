import 'dart:math';

import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/components/main_appbar.dart';
import 'package:naver_webtoon/constrants.dart';
import 'package:naver_webtoon/main.dart';

class ShowMorePage extends StatefulWidget {
  const ShowMorePage({Key? key}) : super(key: key);

  @override
  State<ShowMorePage> createState() => _ShowMorePageState();
}

class _ShowMorePageState extends State<ShowMorePage> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MainAppBar(title: "더보기", icons: Icons.search),
        Container(
            child: Column(
              children: [
                userInfo(),
                SizedBox(
                  height: 10,
                ),
                firstRow(),
                secondRow(),
                SizedBox(height: 230,),
              loginButton(),
              ],
            ),

        ),
      ],
    );
  }

  Widget _gridItem(IconData icons, String name) {
    return Container(
      width: 90,
      height: 105,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Icon(icons, size: 40, ),
            SizedBox(height: 10,),
            Text(name),
          ],
        ),
      ),
    );
  }


  Widget firstRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
           onTap: (){
             Navigator.pushNamed(context, "/search");
           },
            child: _gridItem(Icons.search, "검색")),
        InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/cookie");
            },
            child: _gridItem(Icons.cookie, "쿠키오븐")),
        InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/getzzal");
            },
            child: _gridItem(Icons.messenger_outline, "겟짤")),
        InkWell(
            onTap: (){
             Navigator.pushNamed(context, "/store");
            },
            child: _gridItem(Icons.store, "스토어")),
      ],
    );
  }

  Widget secondRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/cs");
            },
            child: _gridItem(Icons.call, "고객센터")),

        InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/notice");
            },
            child: _gridItem(Icons.notifications_on_sharp, "공지사항")),
        InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/setting");
            },
            child: _gridItem(Icons.settings, "설정")),
        logout(),
      ],
    );
  }

  Widget logout(){
    if(MyApp.loginStatus == false){
      return SizedBox(width: 90,height: 90,);
    }else{
      return InkWell(
          onTap: (){
            MyApp.id = '';
            MyApp.cookie = '';
            MyApp.email = '';
            MyApp.loginStatus = false;
            Navigator.pushNamed(context, "/main");
          },
          child: _gridItem(Icons.login_outlined, "로그아웃"));
    }

  }


  Widget loginButton(){
    var list = ["assets/random1.png", "assets/random2.png", "assets/random3.png", "assets/random4.png"
    , "assets/random5.png", "assets/random6.png", "assets/random7.png"];
    
    var random = Random().nextInt(7);
    if(MyApp.loginStatus == false){
      return  Stack(
        children: [SizedBox(
          width: 250,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("로그인", style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kAccentColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side:BorderSide(color: kAccentColor) ),),
            ),),
        ),
         Padding(
           padding: const EdgeInsets.only(left: 170.0),
           child: Image.asset(list[random]),
         ),


        ]);
    }else {
      return Container();
    }
  }

  Widget userInfo(){
    if(MyApp.loginStatus == true){
      return Column(
        children: [
        SizedBox(height: 10,),
        Text("${MyApp.id}님",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        SizedBox(height: 10,),
        Text("로그인 계정설정 >"),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myCookie(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("충전하기"),
                )
              ],


            ),
          ),
        )
        ],
      );
    }else {
      return SizedBox(height: 1,);
    }
  }

  Widget myCookie(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.cookie, color: Colors.orange,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("내 쿠키"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${MyApp.cookie}개", style: TextStyle(color: kAccentColor),),
        ),
      ],
    );
  }


}
