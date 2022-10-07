



import 'package:flutter/material.dart';

typedef IfBuild = Widget Function();
typedef BoolBuild = bool Function();
class IfWidget extends StatelessWidget {
  final BoolBuild expression;
  final IfBuild trueBuild;
  final IfBuild? elseBuild;
  const IfWidget({Key? key, required this.expression, required this.trueBuild, this.elseBuild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(expression.call()){
      return trueBuild.call();
    }else{
      return elseBuild?.call() ?? const SizedBox();
    }
  }
}

