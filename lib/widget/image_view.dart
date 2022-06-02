import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';

/// 图片浏览
class ImageView extends StatefulWidget {
  final List<String> images;
  final int initCurrent;
  final bool? isFile;

  const ImageView({Key? key, required this.images, this.initCurrent = 0,this.isFile})
      : super(key: key);

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  late List<String> _images = [];

  final GlobalKey<ExtendedImageGestureState> _gestureKey =
  GlobalKey<ExtendedImageGestureState>();

  final SwiperController _swiperController = SwiperController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _images = widget.images;
    Future.microtask(() {
      if (widget.initCurrent != 0) {
        _swiperController.move(widget.initCurrent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(children: <Widget>[
            Expanded(
              child: LayoutBuilder(builder: (con, BoxConstraints c) {
                final size = con.size ?? Size(100, 100);
                return Theme(
                  data: ThemeData(primaryColor: Colors.red),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      if(widget.isFile == true){
                        return buildFileImageCard(size,_images[index],currentIndex == index ? _gestureKey : null);
                      }
                      return buildNetImageCard(size, _images[index],
                          currentIndex == index ? _gestureKey : null);
                    },
                    itemCount: _images.length,
                    control: const SwiperPagination(
                        builder: SwiperPagination.fraction),
                    onIndexChanged: (index) {
                      _gestureKey.currentState?.reset();
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    loop: false,
                    controller: _swiperController,
                  ),
                );
              }),
            )
          ]),
        ],
      ),
    );
  }

  Widget buildNetImageCard(Size size, String imageUrl, Key? gestureKey) {
    return ExtendedImage.network(
      imageUrl,
      fit: BoxFit.contain,
      mode: ExtendedImageMode.gesture,
      extendedImageGestureKey: gestureKey,
      initGestureConfigHandler: (ExtendedImageState state) {
        double? initialScale = 1.0;

        var w = state.extendedImageInfo!.image.width.toDouble();
        var h = state.extendedImageInfo!.image.height.toDouble();

        if (state.extendedImageInfo != null) {
          initialScale = initScale(
              size: size, initialScale: initialScale, imageSize: Size(w, h));
        }

        if (initialScale! > 5.0) {
          return GestureConfig(
            minScale: 0.7,
            animationMinScale: 0.7,
            maxScale: 4.0,
            animationMaxScale: 4.0,
            speed: 1.0,
            inertialSpeed: 100.0,
            initialScale: initialScale,
            inPageView: false,
            initialAlignment: InitialAlignment.center,
          );
        }
        return GestureConfig(
          minScale: 0.7,
          animationMinScale: 0.7,
          maxScale: 4.0,
          animationMaxScale: 4.5,
          speed: 1.0,
          inertialSpeed: 100.0,
          initialScale: initialScale,
          inPageView: false,
          initialAlignment: InitialAlignment.center,
        );
      },
    );
  }

  double? initScale(
      {required Size imageSize, required Size size, double? initialScale}) {
    if (imageSize.width > imageSize.height) {
      return 1;
    }
    final n1 = imageSize.height / imageSize.width;
    final n2 = size.height / size.width;
    if (n1 > n2) {
      final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      final destinationSize = fittedSizes.destination;
      return size.width / destinationSize.width;
    } else if (n1 / n2 < 1 / 4) {
      final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      final destinationSize = fittedSizes.destination;
      return size.height / destinationSize.height;
    }

    return initialScale;
  }


  Widget buildFileImageCard(Size size, String imageUrl, Key? gestureKey) {
    return ExtendedImage.file(
      File(imageUrl),
      fit: BoxFit.contain,
      mode: ExtendedImageMode.gesture,
      extendedImageGestureKey: gestureKey,
      initGestureConfigHandler: (ExtendedImageState state) {
        double? initialScale = 1.0;

        var w = state.extendedImageInfo!.image.width.toDouble();
        var h = state.extendedImageInfo!.image.height.toDouble();

        if (state.extendedImageInfo != null) {
          initialScale = initScale(
              size: size, initialScale: initialScale, imageSize: Size(w, h));
        }

        if (initialScale! > 5.0) {
          return GestureConfig(
            minScale: 0.7,
            animationMinScale: 0.7,
            maxScale: 4.0,
            animationMaxScale: 4.0,
            speed: 1.0,
            inertialSpeed: 100.0,
            initialScale: initialScale,
            inPageView: false,
            initialAlignment: InitialAlignment.center,
          );
        }
        return GestureConfig(
          minScale: 0.7,
          animationMinScale: 0.7,
          maxScale: 4.0,
          animationMaxScale: 4.5,
          speed: 1.0,
          inertialSpeed: 100.0,
          initialScale: initialScale,
          inPageView: false,
          initialAlignment: InitialAlignment.center,
        );
      },
    );
  }
}
