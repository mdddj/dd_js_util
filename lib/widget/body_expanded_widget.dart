import 'package:flutter/material.dart';

import '../ext/context.dart';
import '../ext/widget.dart';

class BodyExpandedWidget extends StatelessWidget {
  final Widget child;
  final Widget bottom;
  final bool igAppbarHeight;
  final double? height;

  const BodyExpandedWidget({Key? key, required this.child, required this.bottom, this.igAppbarHeight = false, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? (igAppbarHeight ? context.screenHeight - context.paddingTop : context.kBodyHeight),
      child: Column(
        children: [child.expanded, bottom],
      ),
    );
  }
}
