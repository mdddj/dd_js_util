import 'package:flutter/material.dart';

import '../../dd_js_util.dart';

typedef SimpleApiPageV2WidgetCall = Widget Function(
    WrapJson json, SimpleApiPageV2State state);

class SimpleApiPageV2 extends StatefulWidget {
  final BaseApi api;
  final SimpleApiPageV2WidgetCall build;
  const SimpleApiPageV2({Key? key, required this.api, required this.build}) : super(key: key);

  @override
  State<SimpleApiPageV2> createState() => SimpleApiPageV2State();
}

class SimpleApiPageV2State extends State<SimpleApiPageV2> {
  BaseApi get api => widget.api;

  WrapJson? _json;

  @override
  void initState() {
    super.initState();
    delayFunction(_fetchData);
  }

  Future<void> _fetchData() async {
    final response = await api.request();
    if (response is WrapJson) {
      setState(() {
        _json = response;
      });
    }else{
      throw UnimplementedError("不支持的操作");
    }
  }

  @override
  Widget build(BuildContext context) {
    if(_json!=null){
      return widget.build.call(_json!,this);
    }
   return const SizedBox();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
