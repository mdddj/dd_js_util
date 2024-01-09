# 5.1.7

依赖升级

# 5.1.6

细节优化

# 5.1.5

优化图片

# 5.1.4

依赖升级

# 5.1.3

细节优化

# 5.1.2

细节优化

# 5.1.1

细节优化

# 5.1.0

细节优化

# 5.0.9

添加下载上传进度回调

# 5.0.8

依赖升级 (dio)

# 5.0.7

依赖升级

# 5.0.6

依赖升级

# 5.0.5

细节优化

# 5.0.4

依赖升级

# 5.0.3

适配 flutter3.16.0

# 5.0.2

* 修复访问相册权限时的错误 （Android 平台）

# 5.0.1

* 依赖升级

# 5.0.0

* 修改了版本号

# 4.6.3

* 诸多新特性更改

# 4.6.2

* 诸多新特性更改

# 4.6.1

* 诸多新特性更改

# 4.6.0

* 诸多新特性更改

# 4.5.3

* 升级部分依赖

# 4.5.1

* 修改依赖约束:">=2.17.0 <4.0.0"

# 4.5.2

* 依赖升级

# 4.5.0

* 移除部分扩展

# 4.4.3

`permission_handler` to 11.0

# 4.4.2

* BaseApi Options add `cancelToken`

# 4.4.1

* 依赖升级

# 4.4.0

* 依赖升级

# 4.3.2

* 细节优化

# 4.3.1

* 细节优化

# 4.3.0

* 细节优化

# 4.2.9

* 依赖升级

# 4.2.8

* 依赖升级

# 4.2.7

* 依赖升级

# 4.2.6

* 依赖升级

# 4.2.5

* 依赖升级

# 4.2.4

* 依赖升级

# 4.2.3 

* 依赖升级

# 4.2.2

若干细节优化

# 4.2.1

若干细节优化

# 4.2.0

若干细节优化

# 4.1.7

若干细节优化

# 4.1.6

若干细节优化

# 4.1.5

移除图片压缩插件

# 4.1.4

删除若干组件
升级部分依赖

# 4.1.3

删除若干组件
升级部分依赖

# 4.1.2

删除若干组件
升级部分依赖

# 4.1.1

删除若干组件
升级部分依赖

# 4.1.0

新增图片组件

# 4.0.6

新增图片组件

# 4.0.5

bug fix

# 4.0.4

bug fix

# 4.0.3

依赖升级

# 4.0.2

依赖升级

# 4.0.1

support dart 3.0

# 4.0.0

support dart 3.0

# 3.5.8

bug fixed

# 3.5.7

bug fixed

# 3.5.6

bug fixed

# 3.5.5

bug fixed

# 3.5.4

改造图片选择器

# 3.5.3

优化dio请求封装

# 3.5.2

优化dio请求封装

# 3.5.1

add `MySliverWaterfallFlowDelegateWithFixedCrossAxisCount`变体

# 3.5.0
* 升级dio
* 添加`MyInterceptor`

# 3.4.3
* 添加代理功能

# 3.4.2
新增`R` 别名`RequestParams`

# 3.4.1

依赖升级
新增`MyIndicatorStatus`

# 3.4.0

依赖升级

# 3.3.6

更新主题模块:
新增`BuildTheme? buildDefaultTheme`属性
```dart
MyAppTheme.getTheme(int index, {FlexSubThemesData? subThemesData,BuildTheme? buildDefaultTheme});
```

新增自定义暗夜模式

`MyAppTheme.buildDarkTheme`
```dart
  ///构建暗夜模式主题
static ThemeData buildDarkTheme(BuildTheme themeBuild) {
final defaultDark = FlexThemeData.dark();
return themeBuild.call(defaultDark);
}
```

# 3.3.5+1

主题依赖更改为抢先预览版
```dart
flex_color_scheme: ^7.0.0-dev.2
```

# 3.3.5

透出loading more 组件
```dart
typedef MyLoadingModel<T> = LoadingModel<T>;
typedef MyLoadingMoreList<T> = LoadingMoreList<T>;
typedef MyLoadingMoreSliverList<T> = LoadingMoreSliverList<T>;
typedef MyListConfig<T> = ListConfig<T>;
typedef MySliverListConfig<T> = SliverListConfig<T>;
typedef MyLoadingMoreCustomScrollView = LoadingMoreCustomScrollView;
```

# 3.3.4

图片保存插件更换为
```yaml
saver_gallery: ^2.0.0
```

# 3.3.3

依赖升级

# 3.3.2

更新 `SimpleInputWrapper`小组件
```dart
KeyboardActionsConfig Function(KeyboardActionsConfig defaultConfig, FocusNode focusNode, BuildContext context);
```

# 3.3.1

新增`SimpleInputWrapper`小组件

升级`dio`到`5.0.2`

# 3.3.0

* 依赖升级

# 3.2.9

添加四个属性定义
```dart
typedef MyList<T> = IList<T>;
typedef MyConstList<T> = IListConst<T>;
typedef MyMap<K, V> = IMap<K, V>;
typedef MyConstMap<K,V> = IMapConst<K,V>;
```

# 3.2.8

新增第三方类型定义
```dart
typedef MyFormData = dio.FormData;
typedef MyMultipartFile = dio.MultipartFile;
typedef MyInterceptorWrapper = dio.InterceptorsWrapper;
typedef ParseObject = BaseModel Function(Map<String, dynamic> originMap);
typedef ToastWrapper = FlutterSmartDialog;
typedef BaseApiOption = dio.BaseOptions;
```

# 3.2.7

add `HiveUtil().init()` function

# 3.2.6

`IList`新增三个扩展`updateLast`,`updateFirst`,`updateItemWithIndex`
```dart
IList<T> updateLast(T Function(T old) callUpdate) {
  return updateItemEx(last, callUpdate);
}

IList<T> updateFirst(T Function(T old) callUpdate) {
  return updateItemEx(first, callUpdate);
}

IList<T> updateItemWithIndex(int index,T Function(T old) callUpdate) {
  return updateItemEx(this.get(index), callUpdate);
}
```

# 3.2.5

改造`isNotNull`函数
```dart
S? isNotNull<S>(S Function(T value) call){
  if(this!=null){
    return call.call(this as T);
  }
  return null;
}
```

# 3.2.4

* new isNotNull call
```dart
extension DynamicEx<T> on T? {
  void isNotNull(ValueChanged<T> call){
    if(this!=null){
      call.call(this as T);
    }
  }
}
```

# 3.2.3

* new functions
```dart
T? isValue<T>(dynamic value) {
  if(value is T) {
    return value;
  }
  return null;
}
```

# 3.2.2

* new function
* up deps
```dart
void ifCall(bool value,VoidCallback call){
  if(value) call.call();
}
```

# 3.2.1

新增多个函数

# nullCall
```dart
void nullCall<T>(T? value,void Function(T value) call){
  if(value!=null){
    call.call(value);
  }
}
```

# bool 类型的扩展

`bool.trueCall`和`bool.falseCall`
```dart
  void trueCall(VoidCallback call) {
  if (this) {
    call.call();
  }
}

void falseCall(VoidCallback call) {
  if (this == false) {
    call.call();
  }
}
```

# IList的扩展
```dart
  //修改第一个满足条件的item,并返回一个新的IList
IList<T> updateItemFirstWhere(bool Function(T element) where, T Function(T old) call) {
  T item = firstWhere((element) => where(element));
  return updateItemEx(item, call);
}

//修改某个item,并返回一个新的IList (常用)
IList<T> updateItemEx(T oldItem, T Function(T old) call) {
  final int index = indexOf(oldItem);
  if (index >= 0) {
    final T newItem = call(this.get(index));
    return replace(index, newItem);
  }
  return this;
}
```

# 3.2.0

loading_more_list更换为loading_more_list_fast

# 3.1.6

重构弹窗层搜索功能

# 3.1.5

重构弹窗层搜索功能

# 3.1.4

* 细节更新

# 3.1.3

* 细节更新

# 3.1.2

* 依赖升级

# 3.1.1

* 细节优化

# 3.1.0

* update diox to dio

# 3.0.2

* dio to 5.0.0

# 3.0.1

* 细节优化

# 3.0.0

* 有重大变更
* BaseApi 新增 `RequestParams` 属性

# 2.2.8

* 适配flutter3.7.0

# 2.2.7

* 适配flutter3.7.0

# 2.2.1

* 多个细节优化

# 2.2.0

* hive添加`saveAndUpdate`快捷更新设置方法

# 2.1.9

* 细节优化

# 2.1.8

* 替换dio为diox

# 2.1.7+6

* bug fixed

# 2.1.7+5

* bug fixed

# 2.1.7+4

* 细节优化

# 2.1.7+3

* 细节优化

# 2.1.7+2

* web 优化

# 2.1.7+1

* bug 修复

# 2.1.7

* 细节优化

# 2.1.6

* bug修复

# 2.1.5

* 新增多个扩展函数

# 2.1.4

* 移除了一些注解

# 2.1.3

* 新增页面小工具

# 2.1.2

* 新增`FBuildWidget`小部件

# 2.1.1+1

* add part of dd_js_util

# 2.1.1

* 添加懒加载小部件`LazyIndexedStack`

# 2.1.0

* 添加默认的box name

# 2.0.7

* 添加自定义主题布局渲染

# 2.0.6

* remove box remove

# 2.0.5

* add `ifNotNull` function

# 2.0.4

* bug修复

# 2.0.3

* 优化主题模块功能

# 2.0.2 

* 新增主题模块

# 2.0.0

* 使用part重构组件

# 1.0.7

* bug 修复

# 1.0.6

* 优化部分细节

# 1.0.5

* 新增多个方法函数

# 1.0.4

* 组件优化

# 1.0.3

* doc update

# 1.0.2

* 优化hive组件封装

# 1.0.1

* 细节优化

# 1.0.0

* 升级到1.0.0

# 0.6.8

* 修复一处插件错误

# 0.6.7

* 优化一些安卓依赖问题

# 0.5.6

* 修复一处类型错误

# 0.5.4

* 新增`getHtmlTitleAndIcon`获取网页标题和图标的方法

# 0.5.2

* 添加模块导出

# 0.5.3

* 添加`delayFunction`函数
* 一些dart hints 更新

# 0.5.1

* 新增3D转换卡片`FlipCardComponent`组件

# 0.5.0

* 更换部分插件依赖

# 0.4.9

* 新增新的广播类

# 0.4.8

* fix dart hints

# 0.4.7

* bug 修复

# 0.4.6

* bug修复

# 0.4.5

* 新增键盘扩展函数`KeyboardMixin` (需要使用riveroid)
* 具体用法查看源码或者readme.md

# 0.4.4

* 新增`MinRow`小组件
* 优化部分组件构建方法

# 0.4.3

* 优化dio封装
* 新增多个新特性

# 0.4.2
* 新增多个函数

# 0.4.1

* 更新新组件

# 0.4.0

* 更新新组件

# 0.3.9

* 更新新组件

# 0.3.8

* 更新新组件

# 0.3.7

* 新增sp扩展

# 0.3.6

* 新增hive缓存工厂类

# 0.3.5

* 新增多个扩展方法

# 0.3.4

* 新增多个扩展方法

# 0.3.2

* 新增多个扩展方法

# 0.3.1

* 添加多个扩展函数

# 0.3.0

* 移除水波纹的扩展

# 0.2.9

* 新增dynamic扩展方法

# 0.2.8

* bug修复

# 0.2.7

* bug 修复

# 0.2.6

* 新增下拉组件

# 0.2.5

* 新增取反扩展

# 0.2.4

* 新增隐藏键盘扩展类的函数

# 0.2.3

* 优化api模块代码

# 0.2.2
* 优化req请求选项

# 0.2.1
* 修复bug

# 0.2.0
* 新增组件

# 0.1.9
* 修复了gradle的警告

# 0.1.8
* 更新了两个小工具,和更新文档

# 0.1.5

* 新增api基本的封装
* 新增mixin组件
* 新增若干扩展类

# 0.1.0 
* `PictureSelection`组件新增`PlaceholderBuilder`,`MenusBuilder`,`相机选择模式`

# 0.0.9
* 新增`covertFun`扩展 (List<dynamic>)

# 0.0.8
* `String#downloadImage`扩展新增`imageName`属性来进行重命名操作
# 0.0.7
* 新增`ImageItemRender` 图片选择9宫格组件

# 0.0.6
* 新增`CountDown`倒计时组件

# 0.0.4
* 新增`String#downloadImage`扩展,可以下载网络图片或者资产图片到相册

# 0.0.3
* 添加字符串的扩展
* 新增`String#fixAutoLines`方法。详情查看注释。

# 0.0.2
* 新增编辑页面组件

## 0.0.1

* TODO: Describe initial release.
