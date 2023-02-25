
# 重构后的弹窗层过滤菜单组件



# 1. 数据源

第一步声明,数据仓库,就是弹出层的数据展示,列表,支持分页加载

```dart

///数据仓库,提供展示数据的列表
class MyRepository extends SearchSupportRepository<String> {
  String params = "";
  bool _hasMore = true;
  int page = 1;

  @override
  Future<bool> loadData([bool isloadMoreAction = false]) async {
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

# 2. 声明组件

```dart

final sourceList = MyRepository();//必须,数据源
final refreshController = RefreshController<String>();//必须,操作控制器
final scrollerController = ScrollController();//可选

//...

SearchSupport<String>(
     params: SearchSupportParams(childBuilder: childBuilder, controller: refreshController, autoShow: false, listening: this),
     itemBuilder: itemBuild,
     sourceList: sourceList,
     child: CupertinoTextField(onChanged: onChange),
)
```

# 3. 子组件布局

设置选中项: `refreshController.toSelectItem(item);` 该item会重新构建UI, `isSelect`将会变为`true`

```dart
  // isSelect - 是否选中状态
  Widget itemBuild(BuildContext context, String item, int index, bool isSelect) {
    return Card(
      color: isSelect ? context.primaryColor : context.cardColor,
      child: Text(item).defaultPadding12,
    ).click(() {
      refreshController.toSelectItem(item);
    });
  }
```

# 4. 构建弹出层UI
这里是声明弹出层的UI小部件件

1. `child` - 就是数据源的列表
2. `manager` - 是弹出弹的一个上下文

```dart
SearchSupportScrollView(
    controller: scrollerController,
    slivers: [child],
)
```

更加详细的布局如下

```dart
Widget childBuilder(SearchSupportManager manager, Widget child) {
    final ctx = manager.context;
    return Scrollbar(
      controller: scrollerController,
      thumbVisibility: true,
      child: Padding(
        padding: const EdgeInsets.only(top: 6, right: 16, bottom: 16, left: 12),
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
```

# 5.监听状态变化
`显示`,`隐藏`,`build`等事件的回调

在你的State上面实现`SearchSupportActionListening`类
```dart
class _MyAppState extends State<MyApp> implements SearchSupportActionListening {
```
实现3个函数
```dart
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
```
设置监听: `listening`:`this`
```dart
 SearchSupport<String>(
   params: SearchSupportParams(listening: this)
   ...
 )
```


# 6. 设置选中API
```dart
refreshController.toSelectItem(item);
```


# 一下是全部代码

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
  final refreshController = RefreshController<String>();
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
                params: SearchSupportParams(childBuilder: childBuilder, controller: refreshController, autoShow: false, listening: this),
                itemBuilder: itemBuild,
                sourceList: sourceList,
                child: CupertinoTextField(onChanged: onChange),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemBuild(BuildContext context, String item, int index, bool isSelect) {
    return Card(
      color: isSelect ? context.primaryColor : context.cardColor,
      child: Text(item).defaultPadding12,
    ).click(() {
      refreshController.toSelectItem(item);
    });
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
        padding: const EdgeInsets.only(top: 6, right: 16, bottom: 16, left: 12),
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
  Future<bool> loadData([bool isloadMoreAction = false]) async {
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