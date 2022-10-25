import 'package:hive/hive.dart';


abstract class CacheBase<E> {
  String get boxName;


  Future<Box<E>> openBox() async {
    final  box = await Hive.openBox<E>(boxName);
    return box;
  }

  Future<void> setValue(String key, E value) async {
    final box = await openBox();
    if(box.containsKey(key)){
      await box.delete(key);
    }
    await box.put(key, value);
    await box.close();
  }

  Future<E?> getValue(String key, {E? defaultValue}) async {
    try{
      final box = await openBox();
      final v = box.get(key, defaultValue: defaultValue);
      await box.close();
      return v;
    }catch(e,s){
      print("获取缓存错误:${e}");
      print(s);
      return null;
    }
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
