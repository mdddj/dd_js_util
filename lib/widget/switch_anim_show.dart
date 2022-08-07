import 'package:flutter/widgets.dart';

class SwitchAnimShow extends StatelessWidget {
  final bool condition; //条件
  final Widget show;
  final Widget elseShow;

  const SwitchAnimShow({Key? key, required this.condition, required this.show, required this.elseShow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: condition ? show : elseShow,
    );
  }
}
