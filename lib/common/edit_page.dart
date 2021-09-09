import 'package:flutter/material.dart';

/// 使用这个组件包裹的组件,点击TextFiled之外的位置可以取消输入框焦点
class EditPage extends StatelessWidget {
  final Widget child;

  const EditPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: child,
    );
  }
}
