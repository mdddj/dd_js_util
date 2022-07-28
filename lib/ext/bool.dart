

import '../api/base.dart';
extension BoolExt on bool {

  @Doc(message: '取反')
  bool get not => !this;

}