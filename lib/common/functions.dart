part of dd_js_util;


extension DynamicEx<T> on T? {
  S? isNotNull<S>(S Function(T value) call){
    if(this!=null){
      return call.call(this as T);
    }
    return null;
  }
}

void ifCall(bool value,VoidCallback call){
  if(value) call.call();
}

T? isValue<T>(dynamic value) {
  if(value is T) {
    return value;
  }
  return null;
}