part of '../dd_js_util.dart';

///权限申请工具类
class KPermissionUtil {
  KPermissionUtil._();

  factory KPermissionUtil() => KPermissionUtil._();

  static KPermissionUtil get instance => KPermissionUtil();

  ///获取 Android 访问相册的权限
  ///
  /// 如果是 ios 平台，则返回[Permission.photosAddOnly]
  Future<Permission> getAndroidSdkPermissionWithPicture() async {
    if (myPlatform.isIos) {
      return Permission.photosAddOnly;
    }
    final androidInfo = await DeviceInfoPlugin().androidInfo;
    if (androidInfo.version.sdkInt < 33) {
      return Permission.storage;
    } else {
      return Permission.photos;
    }
  }

  @Doc(message: '问用户申请访问相册的权限')
  static Future<bool> askPhotoPermissioin(BuildContext context) async {
    //Android 13 以下申请Permission.photos不会弹窗(权限组为空),必须用storage
    final permission = myPlatform.isAndroid
        ? await KPermissionUtil().getAndroidSdkPermissionWithPicture()
        : Permission.photos;
    final status = await permission.request();
    if (status.isGranted) {
      return true;
    } else if (status.isPermanentlyDenied) {
      // If permanently denied, consider guiding the user to app settings using `openAppSettings()`.
      return false;
    } else {
      return false;
    }
  }

  @Doc(message: '问用户申请地理位置的权限')
  static Future<bool> askLocationPermissioin() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      return true;
    } else if (status.isPermanentlyDenied) {
      // If permanently denied, consider guiding the user to app settings using `openAppSettings()`.
      return false;
    } else {
      return false;
    }
  }

  @Doc(message: '申请麦克风权限')
  static Future<bool> askMicrophonePermission() async {
    final status = await Permission.microphone.request();
    if (status.isGranted) {
      return true;
    }
    //和相册/定位保持一致返回false;抛异常会让调用方(如RecordWidget)卡在初始化中
    return false;
  }
}
