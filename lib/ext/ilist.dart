part of dd_js_util;

extension IListEx<T> on IList<T> {
  IList<T> updateItemEx(T oldItem, T Function(T old) call) {
    final int index = indexOf(oldItem);
    if (index >= 0) {
      final T newItem = call(this.get(index));
      return replace(index, newItem);
    }
    return this;
  }

  IList<T> updateItemFirstWhere(
      bool Function(T element) where, T Function(T old) call) {
    T item = firstWhere((element) => where(element));
    return updateItemEx(item, call);
  }

  IList<T> updateLast(T Function(T old) callUpdate) {
    return updateItemEx(last, callUpdate);
  }

  IList<T> updateFirst(T Function(T old) callUpdate) {
    return updateItemEx(first, callUpdate);
  }

  IList<T> updateItemWithIndex(int index,T Function(T old) callUpdate) {
    return updateItemEx(this.get(index), callUpdate);
  }

}
