part of '../../../dd_js_util.dart';

///和[showSimpleListTileWidget]用法一致,但每行使用`AdaptiveListTile`渲染:
///
/// * iOS : Cupertino 分组列表样式(带分隔线)
/// * Android : Material [ListTile]
///
/// [itemBuild] 传了就用你的自定义行,不传则用默认的`AdaptiveListTile` + `e.toString()`。
extension AdaptiveSimpleListTileEx on BuildContext {
  Future<T?> showAdaptiveSimpleListTile<T>(List<T> datas,
      {SimpleListTileWidgetItemBuild<T>? itemBuild,
      String? cancelText,
      bool useRootNavigator = false}) async {
    return await showModalBottomSheet<T>(
        context: this,
        useRootNavigator: useRootNavigator,
        builder: (c) {
          return AdaptiveSimpleListTileWidget<T>(
            datas: datas,
            itemBuild: itemBuild,
            cancelText: cancelText,
          );
        });
  }
}

///底部弹层的自适应列表,替代[SimpleListTileWidget]的 Material 硬编码行
class AdaptiveSimpleListTileWidget<T> extends StatelessWidget {
  final SimpleListTileWidgetItemBuild<T>? itemBuild;
  final List<T> datas;
  final String? cancelText;

  const AdaptiveSimpleListTileWidget(
      {super.key, this.itemBuild, required this.datas, this.cancelText});

  @override
  Widget build(BuildContext context) {
    final isIos = myPlatform.isIos;
    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: isIos
                  ? CupertinoListSection.insetGrouped(
                      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      children: renderChildrens(context),
                    )
                  : Column(children: renderChildrens(context)),
            ),
          ),
          _cancelTile(context, isIos),
        ],
      ),
    );
  }

  Widget _cancelTile(BuildContext context, bool isIos) {
    final text = cancelText ?? 'Close';
    void onTap() => Navigator.pop(context);
    if (isIos) {
      return CupertinoListSection.insetGrouped(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        children: [
          CupertinoListTile(
            title: Center(child: Text(text)),
            onTap: onTap,
          ),
        ],
      );
    }
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: context.kTheme.dialogTheme.backgroundColor,
        padding: EdgeInsets.only(top: 12, bottom: context.paddingBottom + 12),
        child: Text(text),
      ),
    );
  }

  List<Widget> renderChildrens(BuildContext context) {
    return datas
        .map((e) =>
            itemBuild?.call(context, e) ??
            AdaptiveListTile(
              title: Text(e.toString()),
              onTap: () => Navigator.pop(context, e),
            ))
        .toList();
  }
}
