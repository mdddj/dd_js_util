import 'package:hive/hive.dart';

abstract class MyHiveCatch {
  String boxName() => '';
}

abstract class CacheBase {
  final MyHiveCatch myCatch;
  CacheBase(this.myCatch);
  Future<Box> openBox() async {
    return await Hive.openBox(myCatch.boxName());
  }
  Future<void> setValue(String key, String value) async {
    final box = await openBox();
    await box.put(key, value);
  }
  Future<dynamic> getValue(String key, {dynamic defaultValue}) async {
    final box = await openBox();
    return await box.get(key, defaultValue: defaultValue);
  }
}

abstract class CacheFactory {
  ///缓存工厂函数
  T create<T extends CacheBase>() {
    throw CatchException('没有定义缓存工厂');
  }
}

class CatchException implements Exception {
  final String msg;
  CatchException(this.msg);

  @override
  String toString() {
    return "异常:$msg";
  }
}
