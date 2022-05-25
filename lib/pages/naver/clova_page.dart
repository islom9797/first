
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../services/web_view_stack.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  // Add from here ...
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }
  // ... to here.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Naver WebView'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        onPressed: (){
              Get.back();
        },),
      ),
      body: const WebViewStack(),
    );
  }
}