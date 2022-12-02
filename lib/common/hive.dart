part of dd_js_util;


abstract class CacheBase<E> {
  String get boxName;

  Box<E>? _box;

  Future<Box<E>> openBox() async {
    if(_box!=null){
      return _box!;
    }
      _box = await Hive.openBox<E>(boxName);
    return _box!;
  }

  Future<void> setValue(String key, E value) async {
    final box = await openBox();
    if(box.containsKey(key)){
      await box.delete(key);
    }
    await box.put(key, value);
  }

  Future<E?> getValue(String key, {E? defaultValue}) async {
    try{
      final box = await openBox();
      final v = box.get(key, defaultValue: defaultValue);
      return v;
    }catch(e){
      return null;
    }
  }

  Future<void> closeBox() async {
    _box?.close();
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
