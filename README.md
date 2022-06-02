# dd_js_util

flutter web 端 Api

## 开始使用

* 判断是否微信浏览器
```dart
final result = await DdJsUtil.isWeChatBrowser; // true or false
```

# String 扩展

* 下载图片到本地相册`String#downloadImage`

```dart
// 示例
// [checkPermission]: 下载前是否检测一下是否有访问相册的权限,默认false
// [isAsset]: 是否为本地资产图片,默认false
"https://itbug.shop/logo.png".downloadImage(checkPermission:true,isAsset:false);
```

# 组件

* 倒计时组件
```dart
//示例
CountDown(
  endTime: "${data.toIso8601String()}",
  onEnd: (){
    print('倒计时结束');
  },
  autoStart: false,
  controller: _controller,
),
```
* 九宫格选择图片

```dart
PictureSelection(multipleChoice: true,controller: _pictureSelectionController,),
```
1) 用法
```dart
final files = _pictureSelectionController.getFiles;//获取全部图片
_pictureSelectionController.clean();//清空用户选择的图片
///更多方法查看控制器类
```

# 本地图片压缩
```dart
/// file <- 压缩后的文件
/// 参数1 <- 要讲压缩后的图片保存到哪个路径
/// 参数2 [quality] <- 压缩质量
File? file = "file path".fileImageCompress("to file path",quality: 50);
```

# 图片放大
```dart
/// 参数1: 图片列表
/// 参数2: 初始化显示第几张图片
ImageView(images: ["网络图片","网络图片"],initCurrent: 0);
```