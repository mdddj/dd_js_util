import 'package:flutter/widgets.dart';

extension DoubleExt on double {
  Widget get h => SizedBox(height: this);
  Widget get w => SizedBox(width: this);

}


class Gap {
  Gap._();
  factory Gap()=>Gap._();
  static Widget get defaultV => const SizedBox(height: 12);
  static Widget get defaultH => const SizedBox(width: 12);
}