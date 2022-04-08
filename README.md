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