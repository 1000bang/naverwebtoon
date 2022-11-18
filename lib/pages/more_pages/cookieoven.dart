import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/constrants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CookieScreen extends StatelessWidget {
  const CookieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(title: "쿠키오븐",),
      body: SafeArea(
        child: WebView(
          initialUrl: cookieUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}