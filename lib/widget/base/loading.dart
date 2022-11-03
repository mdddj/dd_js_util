part of dd_js_util;

Widget get kLoadingWidgetWithRefresh =>
    const CupertinoActivityIndicator().minHeight(100).center;

/// 自定义头部下拉loading
class CustomLoadingHeader extends Header {
  @override
  Widget contentBuilder(
      BuildContext context,
      RefreshMode refreshState,
      double pulledExtent,
      double refreshTriggerPullDistance,
      double refreshIndicatorExtent,
      AxisDirection axisDirection,
      bool float,
      Duration? completeDuration,
      bool enableInfiniteRefresh,
      bool success,
      bool noMore) {
    // print(
    //     '$refreshState  拉动距离:$pulledExtent 触发刷新距离:$refreshTriggerPullDistance Header的高度:$refreshIndicatorExtent');

    if (refreshState == RefreshMode.refreshed && success) {
      return const Center(child: Text('refresh success!'));
    }
    if (refreshState == RefreshMode.inactive) {
      return const SizedBox();
    }
    switch (refreshState) {
      case RefreshMode.drag:
        if (pulledExtent <= 20) {
          return const SizedBox();
        }
        return Container(
          alignment: Alignment.bottomCenter,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: pulledExtent <= refreshTriggerPullDistance
                ? const Icon(
              Icons.arrow_downward_outlined,
            )
                : const Icon(
              Icons.arrow_upward_outlined,
            ),
          ),
        );

    /// 刷新中状态。
      case RefreshMode.refresh:
        return SizedBox(
          height: refreshIndicatorExtent,
          child: Center(child: kLoadingWidgetWithRefresh),
        );

    /// 可以执行刷新的操作了，直接返回一个loading。
      case RefreshMode.armed:
        return Center(
          child: kLoadingWidgetWithRefresh,
        );
      default:
        return Container();
    }
  }
}

class CustomLoadingFooter extends Footer {
  @override
  Widget contentBuilder(
      BuildContext context,
      LoadMode loadState,
      double pulledExtent,
      double loadTriggerPullDistance,
      double loadIndicatorExtent,
      AxisDirection axisDirection,
      bool float,
      Duration? completeDuration,
      bool enableInfiniteLoad,
      bool success,
      bool noMore) {
    if (noMore) {
      return '到底了~'.fontSizeText(13).center;
    }
    return SizedBox(
      height: loadIndicatorExtent + 30,
      child: const Loading(),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      alignment: Alignment.center,
      child: kLoadingWidgetWithRefresh,
    );
  }
}
