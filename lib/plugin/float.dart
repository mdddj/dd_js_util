part of '../dd_js_util.dart';

//初始化小部件
class FloatBuild extends StatelessWidget {
  final Widget child;

  const FloatBuild({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Overlay(
      initialEntries: [
        OverlayEntry(builder: (BuildContext c) {
          FloatController.context = c;
          return child;
        })
      ],
    );
  }
}

//控制器
class FloatController {
  static late BuildContext context;
}

//需要悬浮的小部件
class FloatContainer extends StatefulWidget {
  final Widget child; //展示的组件
  final GlobalKey globalKey;

  const FloatContainer({super.key, required this.child, required this.globalKey});

  @override
  State<FloatContainer> createState() => _FloatContainerState();
}

class _FloatContainerState extends State<FloatContainer> {
  Widget get child => widget.child;

  GlobalKey get globalKey => widget.globalKey;

  ///计算组件的距离
  double? _calcBottomHeight() {
    final renderObject = globalKey.currentContext?.findRenderObject();
    if (renderObject != null) {
      final box = renderObject as RenderBox;
      final local = box.localToGlobal(Offset.zero);
      return local.dy;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          color: context.kTheme.colorScheme.onTertiaryContainer,
        )),
        Positioned(bottom: _calcBottomHeight() ?? 0, child: child)
      ],
    ).sizeBox(context.screenWidth, context.screenHeight);
  }
}
