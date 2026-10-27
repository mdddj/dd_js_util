part of '../../dd_js_util.dart';

///自适应页面骨架,`AdaptiveScaffold` 的薄封装:
///
/// * iOS 26+ 且 [useNativeToolbar] 为 true : 原生 UIToolbar + Liquid Glass
/// * iOS 26+ 但 [useNativeToolbar] 为 false : `CupertinoPageScaffold` + `CupertinoNavigationBar`
/// * iOS <26 : `CupertinoPageScaffold` + `CupertinoNavigationBar`
/// * Android / 桌面 / Web : Material `Scaffold` + `AppBar`
///
/// ### iOS 26 原生 toolbar 的两个前置条件
///
/// 1. 应用根部要装 `AdaptiveToolbarHost`(用 `AdaptiveApp` 会自动装)。没装的话
///    toolbar 仍然能画出来,但不会固定在导航器之上,页面切换时不会滑入滑出。
///    不想换 `AdaptiveApp` 的话,在 `MaterialApp.builder` 里包一层:
///    ```dart
///    MaterialApp(builder: (context, child) => AdaptiveToolbarHost(child: child!))
///    ```
/// 2. [useNativeToolbar] 传 true,默认是 false。
///
/// 普通页面用 [useNativeToolbar] = false 就够了,想要玻璃 toolbar 再开。
class AdaptiveSimplePage extends StatelessWidget {
  final String title;
  final Widget child;

  ///是否使用 iOS 26+ 原生 UIToolbar(玻璃效果)。默认 false,兼容性优先。
  final bool useNativeToolbar;

  final List<AdaptiveAppBarAction>? actions;
  final Widget? leading;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget? endDrawer;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final Color? backgroundColor;
  final bool extendBodyBehindAppBar;

  ///是否让内容延伸到导航栏之后。iOS 默认 true(Cupertino 习惯),
  ///Android 默认 false。传 null 用各平台默认值。
  final bool? extendBody;

  const AdaptiveSimplePage({
    super.key,
    required this.title,
    required this.child,
    this.useNativeToolbar = false,
    this.actions,
    this.leading,
    this.floatingActionButton,
    this.drawer,
    this.endDrawer,
    this.scaffoldKey,
    this.backgroundColor,
    this.extendBodyBehindAppBar = false,
    this.extendBody,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(
        title: title,
        useNativeToolbar: useNativeToolbar,
        leading: leading,
        actions: actions,
      ),
      body: child,
      floatingActionButton: floatingActionButton,
      drawer: drawer,
      endDrawer: endDrawer,
      scaffoldKey: scaffoldKey,
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      extendBody: extendBody ?? myPlatform.isIos,
    );
  }
}
