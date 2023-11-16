part of '../dd_js_util.dart';

typedef IfBuild = Widget Function();
typedef BoolBuild = bool Function();
class IfWidget extends StatelessWidget {
  final BoolBuild expression;
  final IfBuild trueBuild;
  final IfBuild? elseBuild;

  const IfWidget({super.key, required this.expression, required this.trueBuild, this.elseBuild});

  @override
  Widget build(BuildContext context) {
    if(expression.call()){
      return trueBuild.call();
    }else{
      return elseBuild?.call() ?? const SizedBox();
    }
  }
}

