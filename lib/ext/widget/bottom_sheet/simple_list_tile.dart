part of '../../../dd_js_util.dart';

typedef CustomRenderWidget = Widget Function(
    BuildContext context, List<Widget> child);

extension BuildContextExt on BuildContext {
  Future<T?> showSimpleListTileWidget<T>(List<T> datas,
      {SimpleListTileWidgetItemBuild<T>? itemBuild,
      CustomRenderWidget? customRenderWidget,
      bool? isScrollControlled,
      String? cancelText}) async {
    return await showModalBottomSheet<T>(
        context: this,
        isScrollControlled: isScrollControlled ?? false,
        builder: (c) {
          return SimpleListTileWidget<T>(
            datas: datas,
            itemBuild: itemBuild,
            cancelText: cancelText,
            customRenderWidget: customRenderWidget,
          );
        });
  }
}

typedef SimpleListTileWidgetItemBuild<T> = Widget Function(BuildContext context, T item);

///简单的列表构建布局
class SimpleListTileWidget<T> extends StatelessWidget {
  final SimpleListTileWidgetItemBuild<T>? itemBuild;
  final List<T> datas;
  final String? cancelText;
  final CustomRenderWidget? customRenderWidget;

  const SimpleListTileWidget(
      {super.key, this.itemBuild, required this.datas, this.cancelText, this.customRenderWidget});

  @override
  Widget build(BuildContext context) {
    if (customRenderWidget != null) {
      return customRenderWidget!.call(context, renderChildrens(context));
    }

    return SizedBox(
      height: context.screenHeight * 0.7,
      child: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: renderChildrens(context),
            ),
          ).expanded,
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: context.kTheme.dialogTheme.backgroundColor,
            padding:
                EdgeInsets.only(top: 12, bottom: context.paddingBottom + 12),
            child: Text(cancelText ?? 'Close'),
          ).click(() => Navigator.pop(context)),
        ],
      ),
    );
  }

  List<Widget> renderChildrens(BuildContext context) {
    return datas
        .map((e) =>
            itemBuild?.call(context,e) ??
            ListTile(
              title: Text(e.toString()),
              onTap: () => Navigator.pop(context, e),
            ))
        .toList();
  }
}
