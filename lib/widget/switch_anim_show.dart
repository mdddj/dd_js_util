part of '../dd_js_util.dart';

class SwitchAnimShow extends StatelessWidget {
  final bool condition; //条件
  final Widget show;
  final Widget elseShow;

  const SwitchAnimShow({super.key, required this.condition, required this.show, required this.elseShow});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      //同类型的两个child必须换key,否则AnimatedSwitcher认为还是同一个child,直接替换不播动画
      child: KeyedSubtree(
        key: ValueKey<bool>(condition),
        child: condition ? show : elseShow,
      ),
    );
  }
}
