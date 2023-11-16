import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_platform.freezed.dart';

MyPlatform get myPlatform {
  if (kIsWeb) {
    return const MyPlatform.web();
  }
  if (Platform.isAndroid) {
    return const MyPlatform.android();
  } else if (Platform.isIOS) {
    return const MyPlatform.ios();
  } else if (Platform.isLinux) {
    return const MyPlatform.linux();
  } else if (Platform.isMacOS) {
    return const MyPlatform.macos();
  } else if (Platform.isWindows) {
    return const MyPlatform.windows();
  }
  return const MyPlatform.fuchsia();
}

extension MyPlatformEx on MyPlatform {
  ///判断是否为 ios 平台
  bool get isIos => myPlatform.whenOrNull(ios: () => true, macos: () => true) ?? false;
}

@freezed
class MyPlatform with _$MyPlatform {
  const factory MyPlatform.android() = AndroidPlatform;

  const factory MyPlatform.ios() = IosPlatform;

  const factory MyPlatform.macos() = MacosPlatform;

  const factory MyPlatform.web() = WebPlatform;

  const factory MyPlatform.linux() = LinuxPlatform;

  const factory MyPlatform.windows() = WindowsPlatform;

  const factory MyPlatform.fuchsia() = FuchsiaPlatform;
}
