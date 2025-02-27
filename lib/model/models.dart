import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../dd_js_util.dart';

part 'models.g.dart';

part 'models.freezed.dart';

const igFreezedJson = JsonKey(
    fromJson: null, toJson: null, includeFromJson: false, includeToJson: false);

typedef DioStart = Future<void> Function(Dio dio, String url);
typedef InterceptorCall = ISet<Interceptor> Function(ISet<Interceptor> old);
typedef UrlParseFormat = String Function(String uri, dynamic queryParameters);
typedef ResponseResultCallback = void Function(dynamic response); //接口返回回调
typedef ReLoginSuccess = void Function();

@freezed
sealed class RequestParams with _$RequestParams {
  const RequestParams._();

  const factory RequestParams({
    @Default(true) bool showErrorMsg,
    @Default("loading...") String loadingText,
    String? contentType,
    @Default({}) Map<String, dynamic> headers,
    @Default(true) bool showDefaultLoading,
    @JsonKey(name: 'data', toJson: _dataToJson) dynamic data,
    ResponseType? responseType,
    bool? nullParams,
    @igFreezedJson RequestEncoder? requestEncoder,
    @igFreezedJson DioStart? dioStart,
    bool? returnIsString,
    @igFreezedJson String? fullUrl,
    @igFreezedJson InterceptorCall? interceptorCall,
    @igFreezedJson UrlParseFormat? urlParseFormat,
    @igFreezedJson ResponseResultCallback? responseResultCallback,
    Map<String, dynamic>? extra,
    @igFreezedJson CancelToken? cancelToken,
    @igFreezedJson ProgressCallback? onSendCallback,
    @igFreezedJson ProgressCallback? onReceiveProgress,
    String? downloadUrl,
    @igFreezedJson File? savePath,
  }) = _RequestParams;

  factory RequestParams.fromJson(Map<String, dynamic> json) =>
      _$RequestParamsFromJson(json);
}

extension RequestParamsex on RequestParams {
  DartTypeModel get dataModel {
    return DartTypeModel.createFrom(data);
  }
}

DartTypeModel _dataToJson(dynamic data) {
  final model = DartTypeModel.createFrom(data);
  return model;
}

//----

extension ThemeModeEx on ThemeMode {
  ///根据主题获取下标
  int get getThemeModeIndex {
    switch (this) {
      case ThemeMode.system:
        return 0;
      case ThemeMode.light:
        return 1;
      case ThemeMode.dark:
        return 2;
    }
  }
}

///选择的模式
/// [0] - 跟随系统 (默认)
/// [1] - 亮色模式
/// [2] - 深色模式
@HiveType(typeId: 88)
@freezed
sealed class AppLocalSettingModel with _$AppLocalSettingModel {
  const AppLocalSettingModel._();

  const factory AppLocalSettingModel({
    @HiveField(0, defaultValue: 0) @Default(0) int themeIndex,
    @HiveField(1, defaultValue: 0) @Default(0) int themeModel,
  }) = _AppLocalSettingModel;
}

// -- ok

extension AppLocalSettingModelEx on AppLocalSettingModel {
  ///获取系统主题mode
  ThemeMode get getThemeMode {
    switch (themeModel) {
      case 0:
        return ThemeMode.system;
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
    }
    return ThemeMode.system;
  }
}

@freezed
sealed class AskStringDialogParams with _$AskStringDialogParams {
  const factory AskStringDialogParams(
      {@Default("") String placeholder,
      @Default("") String title,
      @Default("Confirm") String okBtnText,
      @Default("Cancel") String cancelBtnText}) = _AskStringDialogParams;
}

// -- ok

@freezed
sealed class AskIntDialogParams with _$AskIntDialogParams {
  const factory AskIntDialogParams({
    @Default("") String placeholder,
    @Default("") String title,
    @Default("Confirm") String okBtnText,
    @Default("Cancel") String cancelBtnText,
    @igFreezedJson bool Function(int value)? disableOkButton,
    @igFreezedJson String? Function(int value)? errorMessage,
    @igFreezedJson TextStyle? okButtonTextStyle,
    @igFreezedJson TextStyle? cancelButtonTextStyle,
  }) = _AskIntDialogParams;
}

// --- ok

@freezed
sealed class AskOkDialogParams with _$AskOkDialogParams {
  const factory AskOkDialogParams(
      {@Default("") String contentText,
      @Default("Confirm") String okText,
      @Default("Cancel") String cancelText,
      @igFreezedJson Widget? content,
      @igFreezedJson Widget? title}) = _AskOkDialogParams;
}

// -ok

extension BaseApiExceptionEx on BaseApiException {
  Response? tryGetResponse() {
    return switch (this) {
      BaseApiBadResponseException(
        :final response,
      ) =>
        response,
      _ => null
    };
  }

  RequestOptions? tryGetRequestOptions() {
    return switch (this) {
      BaseApiCancelException(:final options) => options,
      BaseApiBadResponseException(:final response) => response?.requestOptions,
      _ => null
    };
  }

  int? get statusCode => tryGetResponse()?.statusCode;
}

@freezed
sealed class BaseApiException with _$BaseApiException {
  const BaseApiException._();

  ///请求被主动关闭异常
  const factory BaseApiException.cancel(
      {@igFreezedJson Object? error,
      @igFreezedJson RequestOptions? options}) = BaseApiCancelException;

  /// 由连接超时引起的异常
  const factory BaseApiException.connectionTimeout() =
      BaseApiConnectionTimeoutException;

  /// 当url发送超时时会发生这种情况。
  const factory BaseApiException.sendTimeout() = BaseApiSendTimeoutException;

  ///它发生在接收超时时。
  const factory BaseApiException.receiveTimeout() =
      BaseApiReceiveTimeoutException;

  ///由[ValidateCertificate]配置的证书不正确引起
  const factory BaseApiException.badCertificate() =
      BaseApiBadCertificateException;

  ///例如由“xhr.onError”或SocketExceptions引起。
  const factory BaseApiException.connectionError() =
      BaseApiConnectionErrorException;

  ///服务器错误
  const factory BaseApiException.badResponse(
      {@igFreezedJson Response? response,
      int? statusCode}) = BaseApiBadResponseException;

  const factory BaseApiException.businessException(
      {required String message,
      @igFreezedJson Object? error,
      @igFreezedJson StackTrace? stackTrace}) = BaseApiBusinessException;

  factory BaseApiException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiExceptionFromJson(json);

  factory BaseApiException.createFromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const BaseApiException.connectionTimeout();
      case DioExceptionType.sendTimeout:
        return const BaseApiException.sendTimeout();
      case DioExceptionType.receiveTimeout:
        return const BaseApiException.receiveTimeout();
      case DioExceptionType.badCertificate:
        return const BaseApiException.badCertificate();
      case DioExceptionType.badResponse:
        return BaseApiException.badResponse(
            response: dioException.response,
            statusCode: dioException.response?.statusCode);
      case DioExceptionType.cancel:
        return BaseApiException.cancel(
            error: dioException.error, options: dioException.requestOptions);
      case DioExceptionType.connectionError:
        return const BaseApiException.connectionError();
      case DioExceptionType.unknown:
        return BaseApiException.businessException(
            message: 'unknown : ${dioException.error}',
            error: dioException.error,
            stackTrace: dioException.stackTrace);
    }
  }
}

//-- ok

extension ByteModelEx on ByteModel {
  String get unit {
    return switch (this) {
      BytesModel() => "B",
      KbModel() => "KB",
      MbModel() => "MB",
      GbModel() => "GB",
      TbModel() => "TB",
    };
  }

  ///格式化显示大小
  String format([int fixed = 1]) => '${value.toStringAsFixed(fixed)}$unit';
}

@freezed
sealed class ByteModel with _$ByteModel {
  const ByteModel._();

  const factory ByteModel.bytes(double value) = BytesModel;

  const factory ByteModel.kb(double value) = KbModel;

  const factory ByteModel.mb(double value) = MbModel;

  const factory ByteModel.gb(double value) = GbModel;

  const factory ByteModel.tb(double value) = TbModel;

  factory ByteModel.create(double bytes) {
    const int kb = 1024;
    const int mb = kb * 1024;
    const int gb = mb * 1024;
    const int tb = gb * 1024;
    if (bytes >= tb) {
      return ByteModel.tb((bytes / tb));
    } else if (bytes >= gb) {
      return ByteModel.gb(bytes / gb);
    } else if (bytes >= mb) {
      return ByteModel.mb(bytes / mb);
    } else if (bytes >= kb) {
      return ByteModel.kb(bytes / kb);
    } else {
      return ByteModel.bytes(bytes);
    }
  }

  factory ByteModel.createFromFile(File file) {
    final len = file.lengthSync();
    return ByteModel.create(len.toDouble());
  }
}

extension DartTypeModelDynEx on dynamic {
  DartTypeModel get dartModel => DartTypeModel.createFrom(this);
}

extension JsonStringDataEx on JsonStringData {
  ///获取 json
  Map<String, dynamic>? tryGetMap({ValueChanged<Map<String, dynamic>>? run}) {
    if (jsonString.isEmpty) {
      return null;
    }
    try {
      final mapData = jsonDecode(jsonString);
      if (mapData is Map<String, dynamic>) {
        run?.call(mapData);
        return mapData;
      }
    } catch (_) {}
    return null;
  }
}

//--ok--
extension DartTypeModelEx on DartTypeModel {
  bool isNull() => switch (this) {
        NullData() => true,
        _ => false,
      };

  bool isList() => switch (this) { ListData() => true, _ => false };

  bool isJson() => switch (this) { JsonData() => true, _ => false };

  bool isString() => switch (this) {
        StringData() => true,
        JsonStringData() => true,
        _ => false
      };

  T? getFieldByJson<T>(String key) {
    return switch (this) {
      JsonData(:final value)
          when value.isNotEmpty && value.containsKey(key) && value[key] is T =>
        value[key] as T?,
      _ => null
    };
  }

  bool isTrue() => switch (this) { BoolData() => true, _ => false };

  bool isBool() => switch (this) { BoolData() => true, _ => false };

  List<T> form<T>(T Function(dynamic e) call) {
    return switch (this) {
      ListData(:final value) => List<T>.from(value.map(call)),
      _ => []
    };
  }

  List<T> formWithField<T>(String field, T Function(dynamic e) call) {
    return switch (this) {
      JsonData(:final value)
          when value.containsKey(field) && value[field] is List<dynamic> =>
        List<T>.from((value[field] as List<dynamic>).map(call)),
      _ => []
    };
  }

  T model<T>(T Function(Map<String, dynamic> e) call) {
    return call(switch (this) { JsonData(:final value) => value, _ => {} });
  }

  T? whenOrNull<T>({
    T? Function(String value)? string,
    T? Function(num value)? num,
    T? Function(bool value)? bool,
    T? Function(List<dynamic> value)? list,
    T? Function(Map<String, dynamic> value)? json,
    T? Function(dynamic value)? dynamic,
    T? Function()? nil,
    T? Function(String value)? jsonStringCall,
  }) {
    final value = switch (this) {
      StringData(:final value) => string?.call(value),
      NumData(:final value) => num?.call(value),
      BoolData(:final value) => bool?.call(value),
      ListData(:final value) => list?.call(value),
      JsonData(:final value) => json?.call(value),
      DynamicData(:final value) => dynamic?.call(value),
      NullData() => nil?.call(),
      JsonStringData(:final jsonString) => jsonStringCall?.call(jsonString),
    };
    return value;
  }
}

@freezed
sealed class DartTypeModel with _$DartTypeModel {
  const DartTypeModel._();

  const factory DartTypeModel.string(String value) = StringData;

  const factory DartTypeModel.num(num value) = NumData;

  const factory DartTypeModel.bool(bool value) = BoolData;

  const factory DartTypeModel.list(List<dynamic> value) = ListData;

  const factory DartTypeModel.json(Map<String, dynamic> value) = JsonData;

  const factory DartTypeModel.dynamic(dynamic value) = DynamicData;

  const factory DartTypeModel.nil() = NullData;

  const factory DartTypeModel.jsonString(String jsonString) = JsonStringData;

  factory DartTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DartTypeModelFromJson(json);

  factory DartTypeModel.createFrom(dynamic data) {
    if (data == null) {
      return const DartTypeModel.nil();
    }
    var model = DartTypeModel.dynamic(data);
    if (data is String) {
      try {
        final dec = jsonDecode(data);
        if (dec is Map<String, dynamic>) {
          model = DartTypeModel.json(dec);
        } else if (dec is List) {
          model = DartTypeModel.list(dec);
        }
      } catch (e) {
        model = DartTypeModel.string(data);
      }
    } else if (data is Map<String, dynamic>) {
      model = DartTypeModel.json(data);
    } else if (data is List<dynamic>) {
      model = DartTypeModel.list(data);
    } else if (data is num) {
      model = DartTypeModel.num(data);
    } else if (data is bool) {
      model = DartTypeModel.bool(data);
    }
    return model;
  }

  static DartTypeModel freezedFromJson(dynamic v) =>
      DartTypeModel.createFrom(v);
}

T tryString2Model<T>(String data, T Function(Map<String, dynamic> json) parse,
    T Function() orElse) {
  try {
    return parse(jsonDecode(data));
  } catch (_) {
    return orElse.call();
  }
}

T? decodeModelOrNull<T>(
    String jsonString, T Function(Map<String, dynamic> jsonMap) decode) {
  try {
    final map = jsonDecode(jsonString);
    return decode(map);
  } catch (e) {
    return null;
  }
}

extension ImageParamsEx on ImageParams {
  double? get getWidth {
    return size ?? width;
  }

  double? get getHeight {
    return size ?? height;
  }
}

typedef CustomCompletedWidget = Widget? Function(
    ExtendedImageState state, ImageParams params, Widget child);

//--ok

@freezed
sealed class ImageParams with _$ImageParams {
  const ImageParams._();

  const factory ImageParams(
      {double? width,
      double? height,
      double? size,
      @igFreezedJson BoxFit? fit,
      @igFreezedJson BorderRadius? borderRadius,
      @igFreezedJson BoxShape? shape,
      @Default(true) bool enableMemoryCache,
      String? heroTag,
      @Default(false) bool isSelected,
      @igFreezedJson Widget? errorWidget,
      @igFreezedJson VoidCallback? onTap,
      @igFreezedJson Color? color,
      @Default(true) bool clearMemoryCacheIfFailed,
      @Default(false) bool clearMemoryCacheWhenDispose,
      @Default(true) bool gaplessPlayback,
      @igFreezedJson BlendMode? colorBlendMode,
      @Default(FilterQuality.medium) FilterQuality filterQuality,

      //---net
      double? scale,
      @Default({}) Map<String, String> headers,
      @Default(true) bool cache,
      @Default(3) int retries,
      @igFreezedJson Duration? timeLimit,
      @igFreezedJson @Default(Duration(seconds: 3)) Duration timeRetry,
      @igFreezedJson CancellationToken? cancelToken,
      String? cacheKey,
      @Default(false) bool printError,
      @Default(true) bool cacheRawData,
      String? imageCacheName,
      @igFreezedJson Duration? cacheMaxAge,
      int? cacheWidth,
      int? cacheHeight,
      double? compressionRatio,
      int? maxBytes,
      String? package,
      @igFreezedJson AssetBundle? bundle,
      @Doc(message: '自定义完成小部件')
      @igFreezedJson
      CustomCompletedWidget? customCompletedWidget,
      @igFreezedJson Widget? customLoadingWidget,
      @igFreezedJson InitEditorConfigHandler? initEditorConfigHandler,
      @igFreezedJson Key? extendedImageEditorKey,
      @igFreezedJson ExtendedImageMode? mode}) = _ImageParams;

  factory ImageParams.fromJson(Map<String, dynamic> json) =>
      _$ImageParamsFromJson(json);
}

extension MyImageEx on MyImage {
  T? whenOrNull<T>({
    T? Function(String url, ImageParams params)? network,
    T? Function(String base64Code, ImageParams params)? base64,
    T? Function(String filePath, ImageParams params)? filePathCall,
    T? Function(String assetPath, ImageParams params)? asset,
  }) {
    return switch (this) {
      MyNetworkImage(:final url, :final params) => network?.call(url, params),
      MyBase64Image(:final base64Code, :final params) =>
        base64?.call(base64Code, params),
      MyFilePathImage(:final filePath, :final params) =>
        filePathCall?.call(filePath, params),
      MyAssetImage(:final assetPath, :final params) =>
        asset?.call(assetPath, params),
    };
  }
}

@freezed
sealed class MyImage with _$MyImage {
  const MyImage._();

  factory MyImage.network(
      {required String url,
      @Default(ImageParams()) ImageParams params}) = MyNetworkImage;

  factory MyImage.base64(
      {required String base64Code,
      @Default(ImageParams()) ImageParams params}) = MyBase64Image;

  factory MyImage.filePath(
      {required String filePath,
      @Default(ImageParams()) ImageParams params}) = MyFilePathImage;

  factory MyImage.asset(
      {required String assetPath,
      @Default(ImageParams()) ImageParams params}) = MyAssetImage;

  factory MyImage.fromJson(Map<String, dynamic> json) =>
      _$MyImageFromJson(json);
}

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
  // bool get isIos =>
  //     myPlatform.whenOrNull(ios: () => true, macos: () => true) ?? false;
  bool get isIos => switch (this) {
        IosPlatform() => true,
        MacosPlatform() => true,
        _ => false
      };

  bool get isAndroid => switch (this) { AndroidPlatform() => true, _ => false };

  bool get isDesktop => switch (this) {
        AndroidPlatform() => false,
        IosPlatform() => false,
        _ => true
      };

  bool get isMobile => !isDesktop;

  Future<void> runInAndroid(VoidCallback call) async {
    switch (this) {
      case AndroidPlatform():
        call();
        break;
      default:
        {
          break;
        }
    }
  }

  Future<void> runInIos(VoidCallback call) async {
    switch (this) {
      case IosPlatform():
        call();
        break;
      default:
        {
          break;
        }
    }
  }

  Future<T?> runInAndroidAndIos<T>(Future<T> Function() call) async {
    return await (switch (this) {
      AndroidPlatform() => call,
      IosPlatform() => call,
      _ => null
    })
        ?.call();
  }

  Future<T?> runInAndroidAndIos2<T>(
      {Future<T?> Function()? ios, Future<T?> Function()? android}) async {
    return await (switch (this) {
      AndroidPlatform() => android,
      IosPlatform() => ios,
      _ => null
    })
        ?.call();
  }

  T? runInAndroidAndIos3<T>({T? Function()? ios, T? Function()? android}) {
    return (switch (this) {
      AndroidPlatform() => android,
      IosPlatform() => ios,
      _ => null
    })
        ?.call();
  }
}

@freezed
sealed class MyPlatform with _$MyPlatform {
  const factory MyPlatform.android() = AndroidPlatform;

  const factory MyPlatform.ios() = IosPlatform;

  const factory MyPlatform.macos() = MacosPlatform;

  const factory MyPlatform.web() = WebPlatform;

  const factory MyPlatform.linux() = LinuxPlatform;

  const factory MyPlatform.windows() = WindowsPlatform;

  const factory MyPlatform.fuchsia() = FuchsiaPlatform;
}

@freezed
sealed class PictureSelectionI18nConfig with _$PictureSelectionI18nConfig {
  const PictureSelectionI18nConfig._();

  const factory PictureSelectionI18nConfig(
      {@JsonKey(name: 'photoAlbumMenuText')
      @Default('相册')
      String photoAlbumMenuText,
      @Default('去拍摄') String goShootText}) = _PictureSelectionI18nConfig;

  factory PictureSelectionI18nConfig.fromJson(Map<String, dynamic> json) =>
      _$PictureSelectionI18nConfigFromJson(json);
}

extension PictureSelectionItemModelEx on PictureSelectionItemModel {
  ///是否为本地磁盘文件的图片
  bool get isLocalFile {
    return this is XXFile;
  }

  bool get isNetworkUrl {
    return this is XXImage;
  }

  ///获取网络的URL
  String? get imageUrl {
    if (isNetworkUrl) {
      return (this as XXImage).url;
    }
    return null;
  }

  ///获取本地的路径
  File? get localFilePath {
    if (isLocalFile) {
      return (this as XXFile).file;
    }
    return null;
  }

  ImageProvider get imageProvider {
    if (isNetworkUrl) {
      return NetworkImage(imageUrl!);
    }
    return FileImage(localFilePath!);
  }
}

typedef PM = PictureSelectionItemModel;

///图片选择器模型
@freezed
sealed class PictureSelectionItemModel with _$PictureSelectionItemModel {
  const PictureSelectionItemModel._();

  factory PictureSelectionItemModel.file({required File file}) = XXFile;

  factory PictureSelectionItemModel.network({required String url}) = XXImage;
}
