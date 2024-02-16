part of '../dd_js_util.dart';

extension ListExt on List<dynamic> {

  /// list转模型
  /// [data] - 待装换的列表
  /// [covert] - 转换函数
  List<T> covertFun<T>(List<dynamic> data,T Function(dynamic object) covert) {
    return List<T>.from(data.map((e) => covert(e))).toList();
  }


  @Doc(message: '将List<dynamic>转成List<String类型>')
  List<String> get asStringList {
    return List<String>.from(map((e) => e.toString())).toList();
  }

}

