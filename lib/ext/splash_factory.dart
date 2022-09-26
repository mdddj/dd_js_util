
import 'package:flutter/material.dart';

class NoSplashFactory extends InteractiveInkFeatureFactory {
  @override
  InteractiveInkFeature create(
      {required MaterialInkController controller,
        required RenderBox referenceBox,
        required Offset position,
        required Color color,
        required TextDirection textDirection,
        bool containedInkWell = false,
        RectCallback? rectCallback,
        BorderRadius? borderRadius,
        ShapeBorder? customBorder,
        double? radius,
        VoidCallback? onRemoved}) {
    return _NoInteractiveInkFeature(referenceBox: referenceBox, controller: controller, color: color);
  }
}

class _NoInteractiveInkFeature extends InteractiveInkFeature {
  _NoInteractiveInkFeature({required MaterialInkController controller, required RenderBox referenceBox, required Color color})
      : super(controller: controller, referenceBox: referenceBox, color: color);

  @override
  void paintFeature(Canvas canvas, Matrix4 transform) {}
}