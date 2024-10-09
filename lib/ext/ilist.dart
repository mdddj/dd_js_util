part of '../dd_js_util.dart';

extension IListEx<T> on IList<T> {
  IList<T> updateItemEx(T oldItem, T Function(T old) call) {
    final int index = indexOf(oldItem);
    if (index >= 0) {
      final T newItem = call(this.get(index));
      return replace(index, newItem);
    }
    return this;
  }

  IList<T> updateItemFirstWhere(bool Function(T element) where, T Function(T old) call) {
    T item = firstWhere((element) => where(element));
    return updateItemEx(item, call);
  }

  IList<T> updateLast(T Function(T old) callUpdate) {
    return updateItemEx(last, callUpdate);
  }

  IList<T> updateFirst(T Function(T old) callUpdate) {
    return updateItemEx(first, callUpdate);
  }

  IList<T> updateItemWithIndex(int index, T Function(T old) callUpdate) {
    return updateItemEx(this.get(index), callUpdate);
  }

  ///修改列表全部的元素
  IList<T> updateAll(ValueCopyWith<T> update) {
    var list = this;
    for (var element in list) {
      list = list.updateItemEx(element, update);
    }
    return list;
  }

  ///有条件的修改全部
  IList<T> updateAllWhere(bool Function(T element) where, ValueCopyWith<T> update) {
    var list = this;
    for (var element in list) {
      if (where(element)) {
        list = list.updateItemEx(element, update);
      }
    }
    return list;
  }

  T? find(bool Function(T element) filter) {
    try {
      return firstWhere(filter);
    } catch (_) {
      return null;
    }
  }
}


extension MyListEx<T> on List<T> {
  T? find(bool Function(T element) filter){
    try{
      return firstWhere(filter);
    }catch(_){
      return null;
    }
  }
}