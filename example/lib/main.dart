import 'package:dd_js_util/widget/count_down.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:dd_js_util/dd_js_util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await DdJsUtil.platformVersion ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }


  final data =DateTime.now().add(Duration(hours: 2));

  final CountDownController _controller = new CountDownController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Center(
              child: Text('Running on: $_platformVersion\n'),
            ),
            TextButton(onPressed: ()async {
              final result = await DdJsUtil.isWeChatBrowser;
              print(result);
            }, child: Text('是否为微信浏览器')),




            CountDown(endTime: "${data.toIso8601String()}",onEnd: (){
              print('倒计时结束');
            },autoStart: false,controller: _controller,),


            TextButton(onPressed: (){
              _controller.start();
            },child: Text('开始倒计时')),

            TextButton(onPressed: (){
              _controller.stop();
            },child: Text('结束倒计时')),

            TextButton(onPressed: (){
              _controller.refresh();
            },child: Text('刷新UI'))
          ],
        ),
      ),
    );
  }
}
