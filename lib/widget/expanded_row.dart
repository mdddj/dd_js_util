part of dd_js_util;

typedef ItemBuild = Widget Function(BuildContext context, int index, bool isEmpty);

class ExpandedRow extends StatelessWidget {
  final int dataCount;
  final ItemBuild itemBuild;

  const ExpandedRow({Key? key, required this.dataCount, required this.itemBuild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(opacity: 0.0, child: itemBuild.call(context, 0, true)),
        Positioned.fill(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) => itemBuild.call(ctx, index, false),
          itemCount: dataCount,
        ))
      ],
    );
  }
}
