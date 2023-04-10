part of dd_js_util;

class ImagePreview extends StatelessWidget {
  final List<PictureSelectionItemModel> images;
  final int index;

  const ImagePreview({required this.images, this.index = 0, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PicSwiper(
      images,
      initIndex: index,
    );
  }
}

class PicSwiper extends StatefulWidget {
  final int initIndex;
  final List<PictureSelectionItemModel> pics;

  const PicSwiper(this.pics, {Key? key, this.initIndex = 0}) : super(key: key);

  @override
  PicSwiperState createState() => PicSwiperState();
}

class PicSwiperState extends State<PicSwiper> with SingleTickerProviderStateMixin {
  StreamController<int> rebuildIndex = StreamController<int>.broadcast();
  StreamController<bool> rebuildSwiper = StreamController<bool>.broadcast();
  AnimationController? _animationController;
  Animation<double>? _animation;
  late Function animationListener;

  List<double> doubleTapScales = <double>[1.0, 2.0];

  int? currentIndex;
  bool _showSwiper = true;

  @override
  void initState() {
    currentIndex = widget.initIndex;
    _animationController = AnimationController(duration: const Duration(milliseconds: 150), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    rebuildIndex.close();
    rebuildSwiper.close();
    _animationController?.dispose();
    clearGestureDetailsCache();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      shadowColor: Colors.transparent,
      child: LayoutBuilder(builder: (context, constraints) {
        return ExtendedImageSlidePage(
          slideAxis: SlideAxis.both,
          slideType: SlideType.onlyImage,
          onSlidingPage: (state) {
            var showSwiper = !state.isSliding;
            if (showSwiper != _showSwiper) {
              _showSwiper = showSwiper;
              rebuildSwiper.add(_showSwiper);
            }
          },
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ExtendedImageGesturePageView.builder(
                itemBuilder: (BuildContext context, int index) {
                  var item = widget.pics[index];
                  Widget ui = ExtendedImage(
                    image: item.imageProvider,
                    fit: BoxFit.contain,
                    enableSlideOutPage: true,
                    mode: ExtendedImageMode.gesture,
                    initGestureConfigHandler: (state) {
                      double? initialScale = 1.0;

                      if (state.extendedImageInfo != null) {
                        initialScale = _initalScale(
                            size: Size(constraints.maxWidth, constraints.maxHeight),
                            initialScale: initialScale,
                            imageSize: Size(state.extendedImageInfo!.image.width.toDouble(),
                                state.extendedImageInfo!.image.height.toDouble()));
                      }
                      return GestureConfig(
                          inPageView: true,
                          initialScale: initialScale!,
                          maxScale: max(initialScale, 5.0),
                          animationMaxScale: max(initialScale, 5.0),
                          //you can cache gesture state even though page view page change.
                          //remember call clearGestureDetailsCache() method at the right time.(for example,this page dispose)
                          cacheGesture: false);
                    },
                    onDoubleTap: (ExtendedImageGestureState state) {
                      var pointerDownPosition = state.pointerDownPosition;
                      var begin = state.gestureDetails!.totalScale;
                      double end;
                      _animation?.removeListener(animationListener as void Function());
                      _animationController!.stop();
                      _animationController!.reset();
                      if (begin == doubleTapScales[0]) {
                        end = doubleTapScales[1];
                      } else {
                        end = doubleTapScales[0];
                      }
                      animationListener = () {
                        state.handleDoubleTap(scale: _animation!.value, doubleTapPosition: pointerDownPosition);
                      };
                      _animation = _animationController!.drive(Tween<double>(begin: begin, end: end));
                      _animation?.addListener(animationListener as void Function());
                      _animationController!.forward();
                    },
                  );

                  return ui;
                },
                itemCount: widget.pics.length,
                onPageChanged: (int index) {
                  currentIndex = index;
                  rebuildIndex.add(index);
                },
                controller: ExtendedPageController(
                  initialPage: currentIndex!,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                //physics: ClampingScrollPhysics(),
              ),
              StreamBuilder<bool>(
                builder: (c, d) {
                  if (d.data == null || !d.data!) return Container();

                  return Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: MySwiperPlugin(widget.pics, currentIndex, rebuildIndex),
                  );
                },
                initialData: true,
                stream: rebuildSwiper.stream,
              ),
              Positioned(
                top: context.paddingTop + 12,
                right: 10,
                child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              )
            ],
          ),
        );
      }),
    );
  }

  double? _initalScale({required Size imageSize, required Size size, double? initialScale}) {
    var n1 = imageSize.height / imageSize.width;
    var n2 = size.height / size.width;
    if (n1 > n2) {
      final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      //final Size sourceSize = fittedSizes.source;
      var destinationSize = fittedSizes.destination;
      return size.width / destinationSize.width;
    } else if (n1 / n2 < 1 / 4) {
      final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      //final Size sourceSize = fittedSizes.source;
      var destinationSize = fittedSizes.destination;
      return size.height / destinationSize.height;
    }

    return initialScale;
  }
}

class MySwiperPlugin extends StatelessWidget {
  final List<PictureSelectionItemModel> pics;
  final int? index;
  final StreamController<int> reBuild;

  const MySwiperPlugin(this.pics, this.index, this.reBuild, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      builder: (BuildContext context, data) {
        return DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: SizedBox(
            height: 50.0,
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Container(
                  width: 10.0,
                ),
                Text(
                  '${data.data! + 1}',
                ),
                Text(
                  ' / ${pics.length}',
                ),
                Container(
                  width: 10.0,
                ),
              ],
            ),
          ).marginOnly(bottom: context.paddingBottom + 12, left: 12, right: 12),
        );
      },
      initialData: index,
      stream: reBuild.stream,
    );
  }
}
