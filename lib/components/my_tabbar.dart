import 'package:flutter/material.dart';
import 'package:naver_webtoon/constrants.dart';

import '../main.dart';
import 'green_button.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Divider(thickness: 1, height: 1,),
        Expanded(
          child: _buildTabBarView(),
        ),
      ],
    );
  }

  _buildTabBarTabs(text) {
    return Tab(
        child: Text(
          text,
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      );
  }


  _buildTabBar() {
    return  TabBar(
        controller: _tabController,
        indicatorColor: Colors.green,
        tabs: [
          _buildTabBarTabs('관심웹툰'),
          _buildTabBarTabs("최근 본"),
          _buildTabBarTabs('임시저장'),
          _buildTabBarTabs('댓글'),
          _buildTabBarTabs('보관함'),
        ],
    );
  }

  _buildTabBarView() {
    return Container(
      color: Colors.white,
      child: TabBarView(
        controller: _tabController,
        children: [
          _buildFirstTab(MyApp.loginStatus),
          _buildSecondTab(),
          _buildThirdTab(MyApp.loginStatus),
          _buildFourthTab(MyApp.loginStatus),
          _buildfifthTab(MyApp.loginStatus),
        ],
      ),
    );
  }

  _buildFirstTab(bool islogin){
    if(islogin == true){
      return ListView(
        children: [
          _lastview("뷰티풀.png", "뷰티풀군바리", "25일전"),
          _lastview("참교육.png", "참교육", "55일전"),
          _lastview("퀘스트.png", "퀘스트지상주의", "100일전"),
        ],
      );
    }else{
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("로그인이 필요합니다"),
            SizedBox(height: 20,),
            _gologin(),
          ],
        ),
      );
    }
  }
  _buildSecondTab(){
    return ListView(
      children: [
        _lastview("뷰티풀.png", "뷰티풀군바리", "25일전"),
        _lastview("장씨.png", "장씨세가 호위모사", "22일전"),
        _lastview("퍼니.png", "퍼니게임", "23일전"),
        _lastview("참교육.png", "참교육", "55일전"),
        _lastview("팔이.png", "팔이피플", "82일전"),
        _lastview("윈드.png", "윈드브레이커", "100일전"),
        _lastview("신화급.png", "신화급 귀속아이템", "102일전"),
      ],
    );
  }
  _buildThirdTab(bool islogin){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.menu_book_sharp, size: 100, color: Colors.grey,),
          SizedBox(height: 20,),
          Text("임시 저장한 컨텐츠가 없습니다."),
        ],
      )
    );
  }
  _buildFourthTab(bool islogin){
    if(islogin == true){
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("작성한 댓글이 없습니다", style: TextStyle(fontSize: 20),),
          ],
        )
    );
    }else{
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MY 댓글은 로그인 후 확인할 수 있습니다."),
            SizedBox(height: 20,),
            _gologin(),
          ],
        ),
      );
    }
  }
  _buildfifthTab(bool islogin){
    if(islogin == true){
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("보관중인 컨텐츠가 없습니다.", style: TextStyle(fontSize: 20,)),
            SizedBox(height: 70,),
            Container(
              height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: kAccentColor
                ),
                child: Center(child: Text("휴지통 바로가기",style: TextStyle(fontSize: 20, color: Colors.white)))),

          ],
        )
    );
    }else{
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("보관함 목록 구성이 완료되지 않았습니다."),
            SizedBox(height: 20,),
            Text("보관함을 이용하기 위하여"),
            Text("초기 목록 구성이 완료되어야 합니다."),
            SizedBox(height: 20,),
            _gologin(),
          ],
        ),
      );
    }
  }


  _lastview(String img, String title, String days){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset("assets/$img",width: 100, height: 100, fit: BoxFit.cover,)),
              SizedBox(width: 20,),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 ),),
                    SizedBox(height: 5,),
                    Text(days, style: TextStyle(fontSize: 10),)
                  ],
                ),
              ),
              Spacer(),

              Text("이어보기 >"),
            ],
                  ),
            Divider(thickness: 1, height: 1,),
          ]),

      ),
    );
  }

  _gologin(){
    return InkWell(
      onTap: (){
        setState(() {
          Navigator.pushNamed(context, "/login");
        });
      },
      child: GreenButton(text: "로그인",),
    );
  }

}
