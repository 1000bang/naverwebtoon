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
            Icon(icons, size: 40,),
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
              Navigator.pushNamed(context, "/play");
            },
            child: _gridItem(Icons.play_circle_rounded, "Play")),
      ],
    );
  }

  Widget secondRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/store");
            },
            child: _gridItem(Icons.store, "스토어")),

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
        SizedBox(width: 90,height: 90,)
      ],
    );
  }

  Widget loginButton(){
    if(MyApp.loginStatus == false){
      return  SizedBox(
        width: 200,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 18),),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kAccentColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side:BorderSide(color: kAccentColor) ),),
          ),),
      );
    }else {
      return Container();
    }
  }


}
