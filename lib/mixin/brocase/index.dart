
import 'package:fbroadcast_nullsafety/fbroadcast_nullsafety.dart';
import 'package:flutter/material.dart';

import '../../ext/map.dart';

enum WrapJsonBroadcase {
  value("wrap-json-value");
  const WrapJsonBroadcase(this.text);
  final String text;
}

mixin BroadcaseMixin<T extends StatefulWidget> on State<T>{
  @override
  void initState() {
    super.initState();
    FBroadcast.systemInstance.register(WrapJsonBroadcase.value.text, (value, callback) {
      if(value is WrapJson){
        handleWrapJson(value);
      }
    });
  }

  void handleWrapJson(WrapJson json);
}