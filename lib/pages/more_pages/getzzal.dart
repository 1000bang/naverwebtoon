import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/constrants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GetZzalScreen extends StatelessWidget {
  const GetZzalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(title: "겟짤",),
      body: SafeArea(
        child: WebView(
          initialUrl: getzzalUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}