import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/constrants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(title: "공지사항",),
      body: SafeArea(
        child: WebView(
          initialUrl: noticeUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}