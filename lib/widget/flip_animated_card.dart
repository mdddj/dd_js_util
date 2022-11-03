part of dd_js_util;

///要展示的面
enum FlipCardShowType{
  front,
  back
}


class FlipCardComponentController {
  late FlipCardComponentState state;
  void _bind(FlipCardComponentState vState){
    state = vState;
  }

  void switchComponent() {
    state.animate();
  }
}

class FlipCardComponent extends StatefulWidget {
  final Widget frontComponent;
  final Widget backComponent;
  final FlipCardComponentController controller;
  final ValueChanged<bool>? valueChanged;

  ///动画执行完成回调
  final VoidCallback? onComplate;

  ///开始执行动画回调
  final VoidCallback? onStartAnimate;
  const FlipCardComponent({ Key? key, required this.frontComponent, required this.backComponent,required this.controller, this.onComplate, this.onStartAnimate, this.valueChanged})
      : super(key: key);

  @override
  FlipCardComponentState createState() => FlipCardComponentState();
}

class FlipCardComponentState extends State<FlipCardComponent>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> frontAnimation;
  late Animation<double> backAnimation;

  bool isFront = true;
  bool hasHalf = false;

  void _bind(){
    widget.controller._bind(this);
  }
  @override
  void initState() {
    super.initState();
    _bind();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    animationController.addListener(() {
      if (animationController.value > 0.5) {
        if (hasHalf == false) {
          isFront = !isFront;
        }
        hasHalf = true;
      }
      widget.valueChanged?.call(isFront);
      if(mounted){
        setState(() {});
      }
    });
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onComplate?.call();
        hasHalf = false;
      }
    });
    frontAnimation = Tween(begin: 0.0, end: 0.5).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn)));
    backAnimation = Tween(begin: 1.5, end: 2.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOut)));
  }



  void animate() {
    widget.onStartAnimate?.call();
    animationController.stop();
    animationController.value = 0;
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double value = 0;
    if (animationController.status == AnimationStatus.forward) {
      if (hasHalf == true) {
        value = backAnimation.value;
      } else {
        value = frontAnimation.value;
      }
    }
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateY(math.pi * value),
      alignment: Alignment.center,
      child: IndexedStack(
        index: isFront ? 0 : 1,
        children: <Widget>[widget.frontComponent, widget.backComponent],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant FlipCardComponent oldWidget) {
    if(widget.controller!=oldWidget.controller){
      _bind();
    }
    super.didUpdateWidget(oldWidget);
  }
}
