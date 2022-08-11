

import 'package:flutter/material.dart';

class SimpleAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const SimpleAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
