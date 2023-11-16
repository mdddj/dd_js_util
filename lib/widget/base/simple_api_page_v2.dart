import 'package:flutter/material.dart';

import '../../dd_js_util.dart';

typedef SimpleApiPageV2WidgetCall = Widget Function(
    WrapJson json, SimpleApiPageV2State state);

class SimpleApiPageV2 extends StatefulWidget {
  final BaseApi api;
  final SimpleApiPageV2WidgetCall build;
  const SimpleApiPageV2({super.key, required this.api, required this.build});

  @override
  State<SimpleApiPageV2> createState() => SimpleApiPageV2State();
}

class SimpleApiPageV2State extends State<SimpleApiPageV2> {
  BaseApi get api => widget.api;

  WrapJson? _json;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    delayFunction(_fetchData);
  }

  Future<void> _fetchData() async {
    if(loading != true){
      setState(() {
        loading = true;
      });
    }
    final response = await api.request();
    if (response is WrapJson) {
      setState(() {
        loading = false;
        _json = response;
      });
    }else{
      throw UnimplementedError("不支持解析对象!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    if(loading){
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    if(_json!=null){
      return widget.build.call(_json!,this);
    }
   return  const Scaffold(
     body: Center(
       child: Text("暂无数据"),
     ) ,
   );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
