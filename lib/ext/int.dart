import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension DoubleExt on double {
  Widget get h => SizedBox(height: this);
  Widget get w => SizedBox(width: this);
  Widget get hs => SizedBox(height: sh);
  Widget get ws => SizedBox(width: sw);

}

extension IntExt on int {
  Widget get h => SizedBox(height: toDouble());
  Widget get w => SizedBox(width: toDouble());
  Widget get hs => SizedBox(height: double.parse('$this').sh);
  Widget get ws => SizedBox(width: (double.parse('$this')).sw);
  Duration get sec => Duration(seconds: this);
  Duration get milliseconds => Duration(milliseconds: this);
  BorderRadius get borderRadius => BorderRadius.circular(toDouble());
  Radius get radius => Radius.circular(toDouble());
}


class Gap {
  Gap._();
  factory Gap()=>Gap._();
  static Widget get defaultV => const SizedBox(height: 12);
  static Widget get defaultH => const SizedBox(width: 12);
}

Widget get k24Height => const SizedBox(height: 24,);