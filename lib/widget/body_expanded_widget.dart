

import 'package:flutter/material.dart';

import '../ext/context.dart';
import '../ext/widget.dart';


class BodyExpandedWidget extends StatelessWidget {
  final Widget child;
  final Widget bottom;
  const BodyExpandedWidget({Key? key, required this.child, required this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.kBodyHeight,
      child: Column(
        children: [
          child.expanded,
          bottom
        ],
      ),
    );
  }
}
