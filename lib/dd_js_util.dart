library dd_js_util;

import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:fbroadcast_nullsafety/fbroadcast_nullsafety.dart';
import 'package:ffloat_nullsafety/ffloat_nullsafety.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:html/dom.dart' hide Text;
import 'package:html/parser.dart';
import 'package:image/image.dart' as image;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

part './api/base.dart';

part './api/error_widget.dart';

part './api/exception.dart';

part './api/util.dart';

///组件模块
part './common/circle.dart';

part './common/edit_page.dart';

part './common/ext.dart';

part './common/fun.dart';

part './common/hive.dart';

part './common/string_ext.dart';

part './common/w.dart';

/// ext 模块
part './ext/bool.dart';

part './ext/context.dart';

part './ext/dynamic.dart';

part './ext/int.dart';

part './ext/map.dart';

part './ext/navigator.dart';

part './ext/splash_factory.dart';

part './ext/string.dart';

part './ext/widget.dart';

part './ext/widget/bottom_sheet/simple_list_tile.dart';

part './ext/widget/col.dart';

part './ext/widget/simple_appbar.dart';

part './mixin/brocase/index.dart';

part './mixin/dialog.dart';

part './mixin/keyboard_mixin.dart';

part './mixin/widget.dart';

part './plugin/float.dart';

part './util/dialog.dart';

part './util/int.dart';

part './util/log.dart';

part './util/permission_util.dart';

part './widget/base/json_wrap.dart';

part './widget/base/loading.dart';

part './widget/base/row_min.dart';

part './widget/base/simple_api_list_page.dart';

part './widget/base/simple_api_page.dart';

part './widget/body_expanded_widget.dart';

part './widget/count_down.dart';

part './widget/date/custom_year_picker.dart';

part './widget/date/date_picker_2.dart';

part './widget/expanded_row.dart';

part './widget/flip_animated_card.dart';

part './widget/hide_keyboard_widget.dart';

part './widget/image_cut.dart';

part './widget/picture_selection.dart';

part './widget/search_support.dart';

part './widget/switch_anim_show.dart';

part './widget/time.dart';

part './widget/record_widget.dart';

part 'theme/model.dart';
part 'theme/model.g.dart';

part 'theme/index.dart';
part 'theme/theme_setting.dart';
part 'widget/lazy_stack_widget.dart';
part 'widget/build_widget.dart';
part 'ext/function.dart';

class DdJsUtil {
  static const MethodChannel _channel = MethodChannel('dd_js_util');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// 判断浏览器是否为微信浏览器
  static Future<bool> get isWeChatBrowser async {
    return await _channel.invokeMethod('isWeChatBrowser');
  }
}
