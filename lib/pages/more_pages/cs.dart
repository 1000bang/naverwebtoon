import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/constrants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CsScreen extends StatelessWidget {
  const CsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(title: "고객센터",),
      body: SafeArea(
        child: WebView(
          initialUrl: csUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}


