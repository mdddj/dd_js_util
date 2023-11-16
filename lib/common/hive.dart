part of '../dd_js_util.dart';

typedef HiveUpdateModel<E> = E Function(E? oldValue);


class HiveUtil {
  HiveUtil._();

  static HiveUtil get _instance => HiveUtil._();

  factory HiveUtil() => _instance;

  //初始化hive模块
  Future<void> init({VoidCallback? inited}) async {
    await Hive.initFlutter();
    inited?.call();
  }
}

typedef CacheBaseBoxHandle<E> = Future<void> Function(Box<E> box);

abstract class CacheBase<E> {
  String get boxName;

  //默认的box名称
  String get defaultBoxName => 'default';
  Box<E>? _box;

  Future<Box<E>> openBox() async {
    if (_box != null) {
      return _box!;
    }
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box(boxName);
    }
    _box = await Hive.openBox<E>(boxName);
    return _box!;
  }

  Future<void> boxAction(CacheBaseBoxHandle<E> handle) async {
    final box = await openBox();
    await handle.call(box);
  }

  Future<void> setValue(String key, E value) async {
    final box = await openBox();
    if (box.containsKey(key)) {
      await box.delete(key);
    }
    await box.put(key, value);
  }

  Future<E?> getValue(String key, {E? defaultValue}) async {
    try {
      final box = await openBox();
      final v = box.get(key, defaultValue: defaultValue);
      return v;
    } catch (e) {
      return null;
    }
  }

  Future<void> deleteByKey(dynamic key) async {
    final box = await openBox();
    if (box.containsKey(key)) {
      await box.delete(key);
    }
  }

  Future<void> closeBox() async {
    _box?.close();
  }

  Future<E?> saveAndUpdate(E? Function(E? oldValue) handle, [String key = 'default', E? defaultValue]) async {
    final oldV = await getValue(key, defaultValue: defaultValue);
    final newV = handle.call(oldV);
    if (newV != null) {
      await setValue(key, newV);
    }
    return newV;
  }

  ///修改全部
  Future<void> updateAllValue(ValueCopyWith<E> update) async {
    final box = await openBox();
    final keys = box.keys;
    await Future.forEach(keys, (element) async {
      final newValue = update(box.get(element) as E);
      await box.put(element, newValue);
    });
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
