part of '../../dd_js_util.dart';

///自适应的简单导航栏,和[SimpleAppbar]并存:
///
/// * iOS : CupertinoNavigationBar
/// * Android : Material [AppBar]
///
/// 想用 iOS 26 原生 Liquid Glass toolbar 时,改用`AdaptiveScaffold` +
/// `AdaptiveAppBar(useNativeToolbar: true)`,那个得由它自己的 Scaffold 承载。
class AdaptiveSimpleAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  const AdaptiveSimpleAppbar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    if (myPlatform.isIos) {
      return CupertinoNavigationBar(
        middle: Text(title),
        leading: leading,
        trailing: actions == null || actions!.isEmpty
            ? null
            : Row(mainAxisSize: MainAxisSize.min, children: actions!),
      );
    }
    return AppBar(
      title: Text(title),
      actions: actions,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => myPlatform.isIos
      ? const Size.fromHeight(44.0)
      : const Size.fromHeight(kToolbarHeight);
}
