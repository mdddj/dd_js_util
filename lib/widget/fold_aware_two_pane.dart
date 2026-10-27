part of '../../dd_js_util.dart';

///折叠感知的双栏布局。
///
/// * 折叠屏且当前处于半开姿态(`HingeStatus.partiallyOpen`) : 双栏,折叠缝落在两栏之间
/// * 其余情况(平展 / 合上 / 非折叠设备) : 单栏,只显示 [leadingPane]
///
/// 用 `FoldAwareBuilder` 驱动,只有折叠姿态、角度、尺寸类变化时才重建,
/// 铰链角度扫动不会带着整个子树一起重建。
///
/// ### 前置条件
///
/// 根部必须装有 [FoldableScope](或直接 `FoldableProvider`),否则本组件永远走单栏。
///
/// ```dart
/// FoldAwareTwoPane(
///   leadingPane: MasterList(),
///   trailingPane: DetailPage(),
///   gap: 16,
/// )
/// ```
class FoldAwareTwoPane extends StatelessWidget {
  final Widget leadingPane;
  final Widget trailingPane;

  ///两栏之间的间距。折叠缝本身有宽度时,实际间距是 `max(gap, 折叠缝宽度)`。
  final double gap;

  ///双栏宽度比例,默认 1:1。
  final double leadingFlex;
  final double trailingFlex;

  ///单栏模式下显示哪一栏。默认显示 [leadingPane]。
  final bool showTrailingInSinglePane;

  ///强制单栏。调试或特殊页面用。
  final bool forceSinglePane;

  const FoldAwareTwoPane({
    super.key,
    required this.leadingPane,
    required this.trailingPane,
    this.gap = 0,
    this.leadingFlex = 1,
    this.trailingFlex = 1,
    this.showTrailingInSinglePane = false,
    this.forceSinglePane = false,
  });

  @override
  Widget build(BuildContext context) {
    if (forceSinglePane) {
      return showTrailingInSinglePane ? trailingPane : leadingPane;
    }
    return foldable.FoldAwareBuilder(
      builder: (context, constraints, fold) {
        if (!fold.spansDivision) {
          return showTrailingInSinglePane ? trailingPane : leadingPane;
        }
        //折叠缝宽度可能大于用户传的 gap,取大的那个
        final division = fold.divisionRect;
        final effectiveGap = division == null
            ? gap
            : math.max(gap, division.width);
        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: leadingFlex.round(), child: leadingPane),
            SizedBox(width: effectiveGap),
            Expanded(flex: trailingFlex.round(), child: trailingPane),
          ],
        );
      },
    );
  }
}

///折叠状态的根部作用域,`FoldableProvider` 的薄封装。
///
/// 装在 `MaterialApp` 外面(或里面、任何包住页面的位置):
///
/// ```dart
/// FoldableScope(
///   child: MaterialApp(home: HomePage()),
/// )
/// ```
///
/// 之后任意位置的 `context.isFoldable` / `context.hingeStatus` /
/// `context.horizontalSizeClass` 都能读到折叠状态。
///
/// ### 关于 [bridgeDisplayFeatures]
///
/// 默认 `false`。打开后折叠几何会写进 `MediaQuery.displayFeatures`,
/// Flutter 的 `DisplayFeatureSubScreen` 会把所有 `AlertDialog`、底部弹层、
/// 日期/时间选择器限制在折叠的一半。`dd_js_util` 的 `AskOkDialog`、
/// `showAdaptiveSimpleListTile`、`DatePicker2` 都会受影响。
/// 除非你确认过弹窗在双栏下的表现,否则保持关闭。
class FoldableScope extends StatelessWidget {
  final Widget child;

  ///是否把折叠几何桥接进 `MediaQuery.displayFeatures`。默认关闭。
  final bool bridgeDisplayFeatures;

  const FoldableScope({
    super.key,
    required this.child,
    this.bridgeDisplayFeatures = false,
  });

  @override
  Widget build(BuildContext context) {
    return foldable.FoldableProvider(
      bridgeMode: bridgeDisplayFeatures
          ? foldable.DisplayFeatureBridgeMode.full
          : foldable.DisplayFeatureBridgeMode.none,
      child: child,
    );
  }
}
