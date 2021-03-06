import 'dart:async';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/widget/count_down.dart';
import 'package:dd_js_util/widget/image_cut.dart';
import 'package:dd_js_util/widget/picture_selection.dart';
import 'package:dd_js_util/widget/search_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'custom_year_picker.dart';
import 'date_picker_2.dart';

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
      platformVersion = await DdJsUtil.platformVersion ?? 'Unknown platform version';
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

  final data = DateTime.now().add(Duration(hours: 2));

  final CountDownController _controller = new CountDownController();

  final PictureSelectionController _pictureSelectionController = new PictureSelectionController();

  final SearchController searchController = SearchController();


  final RefreshController refreshController = RefreshController();

  var cy = DateTime.now();

  final strs = ["????????????", "????????????", "?????????"];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        MyLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Center(
              //   child: Text('Running on: $_platformVersion\n'),
              // ),
              // TextButton(
              //     onPressed: () async {
              //       final result = await DdJsUtil.isWeChatBrowser;
              //       print(result);
              //     },
              //     child: Text('????????????????????????')),
              // CountDown(
              //   endTime: "${data.toIso8601String()}",
              //   onEnd: () {
              //     print('???????????????');
              //   },
              //   autoStart: false,
              //   controller: _controller,
              // ),
              // TextButton(
              //     onPressed: () {
              //       _controller.start();
              //     },
              //     child: Text('???????????????')),
              // TextButton(
              //     onPressed: () {
              //       _controller.stop();
              //     },
              //     child: Text('???????????????')),
              // TextButton(
              //     onPressed: () {
              //       _controller.refresh();
              //     },
              //     child: Text('??????UI')),
              PictureSelection(
                multipleChoice: true,
                controller: _pictureSelectionController,
                // menusBuilder: (a, b) {
                //   return Container(
                //     color: Colors.pink,
                //     child: SingleChildScrollView(
                //         child: Column(
                //       children: [
                //         TextButton(
                //           child: Text('????????????'),
                //           onPressed: () async {
                //             await a();
                //           },
                //         ),
                //         TextButton(
                //           child: Text('????????????'),
                //           onPressed: () async {
                //             await b();
                //           },
                //         )
                //       ],
                //     )),
                //   );
                // },
                // placeholderBuilder: (size) {
                //   return SizedBox(
                //       width: size.width,
                //       height: size.height,
                //       child: Center(
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Icon(Icons.add),
                //             SizedBox(height: 2),
                //             Text('????????????'),
                //           ],
                //         ),
                //       ));
                // },
                // itemBuilder: ( context, file, size, onRemove){
                //   return SizedBox(
                //     width: size.width,
                //     height: size.height,
                //     child: GestureDetector(child: Image.file(file),onTap:(){
                //       //??????????????????
                //       onRemove(file);
                //     }),
                //   );
                // },
              ),
              // TextButton(
              //   onPressed: () {
              //     final files = _pictureSelectionController.getFiles;
              //     print(files);
              //   },
              //   child: Text('??????????????????'),
              // ),
              // TextButton(
              //   onPressed: () {
              //     _pictureSelectionController.clean();
              //   },
              //   child: Text('??????????????????'),
              // ),
              // TextButton(
              //   onPressed: () async {
              //     final file = await ImagePicker().pickImage(source: ImageSource.gallery);
              //     print(file);
              //     if (file != null) {
              //       Get.to(() => ImageCutWidget(
              //             imagePath: file.path,
              //           ));
              //     } else {}
              //   },
              //   child: Text('????????????????????????'),
              // ),
              // SizedBox(
              //   width: 700,
              //   height: 200,
              //   child: CupertinoDatePicker(
              //     hideDay: true,
              //     mode: CupertinoDatePickerMode.date,
              //     onDateTimeChanged: (DateTime value) {
              //       print(value);
              //     },
              //   ),
              // ),

              //????????????
              SizedBox(
                width: 200,
                child: SearchSupport<String>(
                  childrens: strs,
                  itemBuilder: (str) {
                    return Container(
                      padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Text(str));
                  },
                  onSelected: (v) {
                    print('?????????:$v');
                  },
                  child: TextField(
                    onChanged: (v) {
                      searchController.show();
                      refreshController.doRefresh(v);
                    },
                    decoration: InputDecoration(
                      border: inputBorder,
                      focusedBorder: inputBorder,
                      disabledBorder: inputBorder
                    ),
                  ),
                  controller: searchController,
                  refreshController: refreshController,
                  request: request,
                  containerBuilder: (child){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white
                      ),
                        child: child);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder get inputBorder =>  OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(color: Colors.grey)
  );

  Future<List<String>> request(String? key) async {
    var s = ["????????????","????????????","?????????",key??"11"];
    s.removeWhere((element) => !element.contains(key??""));
    return s;
  }
}
