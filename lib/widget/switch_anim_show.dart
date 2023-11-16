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
      child: condition ? show : elseShow,
    );
  }
}
