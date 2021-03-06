# dd_js_util

flutter 通用工具类
pub地址: https://pub.dev/packages/dd_js_util

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
/// 参数3: 是否为本地类型图片,如果是,参数1需要替换为File的路径
ImageView(images: ["网络图片","网络图片"],initCurrent: 0,isFile: false);
```

# 日期选择组件

1.导包
```yaml
  # 导入国际化包
  flutter_localizations:
    sdk: flutter
```
2.引入
```dart
GetMaterialApp(
      localizationsDelegates: [
        
        //这个要在第一位
        MyLocalizationsDelegate(), //导入1
        GlobalMaterialLocalizations.delegate,//导入2
        GlobalWidgetsLocalizations.delegate,//导入3
        GlobalCupertinoLocalizations.delegate,//导入4

      ],
      supportedLocales: [
        const Locale('zh', 'CH'),//导入1
        const Locale('en', 'US'),//导入2
      ],
)
```

3.使用组件
```dart
              SizedBox(
                width: 700,
                height: 200,
                child: CupertinoDatePicker(
                  hideDay: true,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime value) {
                    print(value);
                  },
                ),
              )
```
4.效果
[![Xr1UR1.jpg](https://s1.ax1x.com/2022/06/08/Xr1UR1.jpg)](https://imgtu.com/i/Xr1UR1)
