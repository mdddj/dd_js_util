part of dd_js_util;
///权限申请工具类
class KPermissionUtil {
  @Doc(message: '问用户申请访问相册的权限')
  static Future<bool> askPhotoPermissioin(BuildContext context) async {
    final status = await Permission.photos.request();
    if (status == PermissionStatus.permanentlyDenied) {
      return false;
    } else {
      return true;
    }
  }


  @Doc(message: '问用户申请地理位置的权限')
  static Future<bool> askLocationPermissioin() async {
    final status = await Permission.location.request();
    if (status == PermissionStatus.permanentlyDenied) {
      return false;
    } else {
      return true;
    }
  }

  @Doc(message: '申请麦克风权限')
  static Future<bool> askMicrophonePermission() async {
    final status = await Permission.microphone.request();
    if(status != PermissionStatus.granted){
      throw Exception("请先授予APP录音权限");
    }
    return true;
  }

}
