import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dd_js_util.dart';
import 'search_support_manager.dart';

part 'search_support.freezed.dart';

typedef SearchSupportFutureRequest<T> = Future<List<T>> Function(String searchKeyworld);
typedef SearchSupportItemBuilder<T> = Widget Function(BuildContext context, T item, int index);
typedef SearchSupportCoreUiBuild = Widget Function(SearchSupportManager manager, Widget child);

///参数列表
@freezed
sealed class SearchSupportParams<T> with _$SearchSupportParams<T> {
  const factory SearchSupportParams(
      {
      ///是否自动显示搜索结果
      @Default(true) bool autoShow,
      //搜索控制器
      RefreshController<T>? controller,
      //展示组件的容器,需要固定高度
      required SearchSupportCoreUiBuild childBuilder,
      SearchSupportActionListening? listening}) = _SearchSupportParams;
}

///事件监听
abstract class SearchSupportActionListening {

  ///弹出层显示事件
  void initShow();

  ///弹出层隐藏事件
  void onHide();

  ///弹出层重构事件
  void onBuild(BuildContext context);

}
