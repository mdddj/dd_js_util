
弹窗层过滤菜单
```dart
import 'package:dd_js_util/widget/search/search_support.dart';
import 'package:dd_js_util/widget/search/search_support_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:dd_js_util/dd_js_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> implements SearchSupportActionListening {
  final sourceList = MyRepository();
  final refreshController = RefreshController();
  final scrollerController = ScrollController();



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ToastWrapper.init(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SearchSupport<String>(
                SearchSupportSliverList(SearchSupportConfig<String>(itemBuilder: itemBuild, sourceList: sourceList, showNoMore: false)),
                params: SearchSupportParams(childBuilder: childBuilder, controller: refreshController,autoShow: false,listening: this),
                child: CupertinoTextField(onChanged: onChange),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemBuild(BuildContext context, String item, int index) {
    return Card(
      child: Text(item).defaultPadding12,
    );
  }

  //执行搜索
  void onChange(String value) {
    if (refreshController.isShow.not) refreshController.show();
    sourceList.search(value);
  }

  Widget childBuilder(SearchSupportManager manager, Widget child) {
    final ctx = manager.context;
    return Scrollbar(
      controller: scrollerController,
      thumbVisibility: true,
      child: Padding(
        padding: const EdgeInsets.only(top: 6,right: 16,bottom: 16,left: 12),
        child: PhysicalModel(
          color: ctx.cardColor,
          shadowColor: ctx.primaryColor,
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            margin: const EdgeInsets.all(12),
            height: 200,
            width: ctx.screenWidth * 0.8,
            child: SearchSupportScrollView(
              controller: scrollerController,
              slivers: [child],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initShow() {
    kLog('事件监听: 弹出层显示了');
    toast('事件监听:弹出层显示了');
  }

  @override
  void onBuild(BuildContext context) {
    // kLog('事件监听: 弹窗层UI刷新');
  }

  @override
  void onHide() {
    kLog('事件监听: 弹出层隐藏了');
    toast('事件监听:弹窗层隐藏了');
  }
}

///数据仓库,提供展示数据的列表
class MyRepository extends SearchSupportRepository<String> {
  String params = "";
  bool _hasMore = true;
  int page = 1;

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    await Future.delayed(const Duration(seconds: 1));
    addAll(List.generate(10, (index) => "$index")); //设置过滤结果
    setState(); //刷新UI
    page++;
    if (page == 7) {
      _hasMore = false;
    }
    return true;
  }

  Future<void> search(String keyworld) async {
    params = keyworld;
    page = 1;
    _hasMore = true;
    refresh(true);
  }

  @override
  bool get hasMore => _hasMore;
}

```