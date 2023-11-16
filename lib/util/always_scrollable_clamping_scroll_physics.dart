part of '../dd_js_util.dart';

class AlwaysScrollableClampingScrollPhysics extends ClampingScrollPhysics {
  const AlwaysScrollableClampingScrollPhysics({super.parent});

  @override
  AlwaysScrollableClampingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return AlwaysScrollableClampingScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) {
    return true;
  }
}
