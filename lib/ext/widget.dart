part of dd_js_util;

typedef ValueCopyWith<T> = T Function(T value);
typedef DelayFetch = void Function();

///延迟加载请求
///一般在initState里面使用,执行初始化的一些操作
///比如发起请求
void delayFunction(final DelayFetch call, [int? milliseconds]) {
  Future.microtask(() => Future.delayed(Duration(milliseconds: milliseconds ?? 300), call));
}

extension WidgetExt on Widget {
  Widget get removeScrollViewSplash {
    return ScrollConfiguration(behavior: NoShadowScrollBehavior(), child: this);
  }

  Widget padding(double v) {
    return Padding(
      padding: EdgeInsets.all(v),
      child: this,
    );
  }

  Widget get defaultPadding8 => padding(8);

  Widget get defaultPadding12 => padding(12);

  Widget mb(double v) => Container(margin: EdgeInsets.only(bottom: v), child: this);

  Widget ml(double v) => Container(margin: EdgeInsets.only(left: v), child: this);

  Widget mr(double v) => Container(margin: EdgeInsets.only(right: v), child: this);

  Widget mt(double v) => Container(margin: EdgeInsets.only(top: v), child: this);

  Widget margin(double v) => Container(margin: EdgeInsets.all(v), child: this);

  Widget marginOnly({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0}) => Container(
        margin: EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
        child: this,
      );

  Widget paddingOnly({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0}) => Padding(
        padding: EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
        child: this,
      );

  Widget get toSliverWidget => SliverToBoxAdapter(
        child: this,
      );

  Widget get editPage => EditPage(child: this);

  Widget get cardWidget => Card(
        child: this,
      );

  Widget cardWidget2(double eve) => Card(
        elevation: eve,
        child: this,
      );

  Widget get center => Center(
        child: this,
      );

  Widget get expanded => Expanded(child: this);

  Widget minHeight(double height) => ConstrainedBox(constraints: BoxConstraints(minHeight: height), child: this);

  Widget maxHeight(double height) => ConstrainedBox(constraints: BoxConstraints(maxHeight: height), child: this);

  Widget minWidth(double width) => ConstrainedBox(constraints: BoxConstraints(minWidth: width), child: this);

  Widget maxWidth(double width) => ConstrainedBox(constraints: BoxConstraints(maxWidth: width), child: this);

  Widget paddingWithObj(EdgeInsets edgeInsets) => Padding(padding: edgeInsets);

  Widget aspectRatio(double v) => AspectRatio(
        aspectRatio: v,
        child: this,
      );

  Route get materialRouter => MaterialPageRoute(builder: (_) => this);

  Widget border(BuildContext context, {BoxDecoration? decoration, Color? borderColor, BorderRadius? borderRadius, double width = 1.0}) {
    return Container(
      decoration: decoration ?? BoxDecoration(border: Border.all(color: borderColor ?? context.theme.dividerColor, width: width), borderRadius: borderRadius),
      child: this,
    );
  }

  Widget get topBorder {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey.shade100, width: 0.5))),
      child: this,
    );
  }

  Widget longClick({required VoidCallback onLongPress}) {
    return GestureDetector(onLongPress: onLongPress, child: this);
  }

  /// 高度扩展
  Widget height(double hei) {
    return SizedBox(
      height: hei,
      child: this,
    );
  }

  Widget click(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }

  Widget get positionedFill {
    return Positioned.fill(child: this);
  }

  ///添加滚动条
  Widget addScrollbar({ScrollController? controller}) {
    if (io.Platform.isAndroid) {
      return Scrollbar(
        controller: controller,
        child: this,
      );
    } else if (io.Platform.isIOS) {
      return CupertinoScrollbar(
        controller: controller,
        child: this,
      );
    }
    return this;
  }

  Widget ifShow(bool show) {
    return IfWidget(expression: () => show, trueBuild: () => this);
  }

  Widget disableTextScaling(BuildContext context, ValueCopyWith<MediaQueryData> copyWith) {
    final oldValue = MediaQuery.of(context);
    return MediaQuery(data: copyWith.call(oldValue), child: this);
  }

  @Doc(message: 'true 表示可见的 , false 为隐藏')
  Widget visible(bool value) {
    return IfWidget(expression: ()=>value, trueBuild: ()=>this);
  }
  
  /// 如果`value`为true, 则展示trueWidget,否则展示为本身this
  Widget ifTrue(bool value,Widget trueWidget,[Duration? duration]){
      return AnimatedSwitcher(duration:duration ?? const Duration(milliseconds: 300),child: value?trueWidget : this);
  }

  Widget loading(bool value){
    return ifTrue(value,const CupertinoActivityIndicator());
  }
  
}

typedef WidgetRenderT<T> = Widget Function(T value);

class NullWidget<T> extends StatelessWidget {
  final T? value;
  final WidgetRenderT<T> render;
  const NullWidget(this.value,this.render,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(value != null){
      return render.call(value as T);
    }
    return const SizedBox();
  }
}


