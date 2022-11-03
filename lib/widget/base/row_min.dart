part of dd_js_util;
class MinRows extends StatelessWidget {
  final List<Widget> children;
  final double? gap;

  const MinRows(this.children, {Key? key, this.gap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [for (int a = 0; a < children.length; a++) children[a].marginOnly(right: a != children.length - 1 ? (gap ?? 0) : 0)],
    );
  }
}
