import 'package:flutter/material.dart';

import '../../../dd_js_util.dart';
import '../../context.dart';
import '../../widget.dart';

extension BuildContextExt on BuildContext {
  Future<T?> showSimpleListTileWidget<T>(List<T> datas, {SimpleListTileWidgetItemBuild<T>? itemBuild}) async {
    return await showModalBottomSheet<T>(
        context: this,
        builder: (c) {
          return SimpleListTileWidget<T>(datas: datas, itemBuild: itemBuild);
        });
  }
}

typedef SimpleListTileWidgetItemBuild<T> = Widget Function(T item);

///简单的列表构建布局
class SimpleListTileWidget<T> extends StatelessWidget {
  final SimpleListTileWidgetItemBuild<T>? itemBuild;
  final List<T> datas;

  const SimpleListTileWidget({Key? key, this.itemBuild, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.7,
      child: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: datas
                  .map((e) =>
              itemBuild?.call(e) ??
                  ListTile(
                    title: Text(e.toString()),
                    onTap: () => Navigator.pop(context, e),
                  ))
                  .toList(),
            ),
          ).expanded,
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: context.kTheme.dialogBackgroundColor,
            padding: EdgeInsets.only(
                top: 12,
                bottom: context.paddingBottom + 12
            ),
            child: const Text('Close'),
          ).click(() => Navigator.pop(context)),
        ],
      ),
    );
  }
}
