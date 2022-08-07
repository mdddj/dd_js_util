import 'package:flutter/material.dart';

class Col extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  const Col({Key? key, required this.children, this.mainAxisAlignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: children,
    );
  }
}
