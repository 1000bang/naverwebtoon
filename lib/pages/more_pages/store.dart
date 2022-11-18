import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/constrants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(title: "스토어",),
      body: SafeArea(
        child: WebView(
          initialUrl: storeUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
