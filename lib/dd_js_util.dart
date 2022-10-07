
import 'dart:async';

import 'package:flutter/services.dart';

/// 功能导出
/// api
export './api/base.dart';
export './api/error_widget.dart';
export './api/exception.dart';
export './api/util.dart';
///组件模块
export './common/circle.dart';
export './common/edit_page.dart';
export './common/ext.dart';
export './common/fun.dart';
export './common/hive.dart';
export './common/string_ext.dart';
export './common/w.dart';
/// ext 模块
export './ext/bool.dart';
export './ext/context.dart';
export './ext/dynamic.dart';
export './ext/int.dart';
export './ext/list.dart';
export './ext/map.dart';
export './ext/navigator.dart';
export './ext/splash_factory.dart';
export './ext/string.dart';
export './ext/widget.dart';
export './ext/widget/bottom_sheet/simple_list_tile.dart';
export './ext/widget/col.dart';
export './ext/widget/simple_appbar.dart';
export './mixin/brocase/index.dart';
export './mixin/dialog.dart';
export './mixin/keyboard_mixin.dart';
export './mixin/widget.dart';
export './plugin/float.dart';
export './util/dialog.dart';
export './util/int.dart';
export './util/log.dart';
export './util/permission_util.dart';
export './widget/base/json_wrap.dart';
export './widget/base/loading.dart';
export './widget/base/row_min.dart';
export './widget/base/simple_api_list_page.dart';
export './widget/base/simple_api_page.dart';
export './widget/body_expanded_widget.dart';
export './widget/count_down.dart';
export './widget/date/custom_year_picker.dart';
export './widget/date/date_picker_2.dart';
export './widget/expanded_row.dart';
export './widget/flip_animated_card.dart';
export './widget/hide_keyboard_widget.dart';
export './widget/image_cut.dart';
export './widget/image_view.dart';
export './widget/picture_selection.dart';
export './widget/search_support.dart';
export './widget/switch_anim_show.dart';
export './widget/time.dart';



class DdJsUtil {
  static const MethodChannel _channel =
      MethodChannel('dd_js_util');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// 判断浏览器是否为微信浏览器
  static Future<bool> get isWeChatBrowser async {
    return await _channel.invokeMethod('isWeChatBrowser');
  }


}

