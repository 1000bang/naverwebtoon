import 'package:flutter/material.dart';
import 'package:naver_webtoon/pages/main_screen.dart';
import 'package:naver_webtoon/pages/more_pages/cookieoven.dart';
import 'package:naver_webtoon/pages/more_pages/getzzal.dart';
import 'package:naver_webtoon/pages/more_pages/join.dart';
import 'package:naver_webtoon/pages/more_pages/login.dart';
import 'package:naver_webtoon/pages/more_pages/notice.dart';
import 'package:naver_webtoon/pages/more_pages/cs.dart';
import 'package:naver_webtoon/pages/more_pages/setting.dart';
import 'package:naver_webtoon/pages/more_pages/store.dart';
import 'package:naver_webtoon/pages/more_pages/search_screen.dart';
import 'package:naver_webtoon/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
static bool loginStatus = false;
static String id = '';
static String email = '';
static String cookie = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    routes: {
      "/main": (context) => MainScreen(),
      "/splash": (context) => SplashScreen(),
      "/search" : (context) => SearchScreen(),
      "/getzzal" : (context) => GetZzalScreen(),
      "/cookie" : (context) => CookieScreen(),
      "/notice" : (context) => NoticeScreen(),
      "/cs" : (context) => CsScreen(),
      "/setting" : (context) => SettingScreen(),
      "/store" : (context) => StoreScreen(),
      "/login" : (context) => LoginPage(),
      "/join" : (context) => JoinScreen(),






    }
    );
  }
}
