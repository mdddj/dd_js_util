
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

class FFConvert {
  FFConvert._();

  static T? convert<T extends Object?>(dynamic value) {
    if (value == null) {
      return null;
    }
    return json.decode(value.toString()) as T?;
  }
}

T? asT<T extends Object?>(dynamic value, [T? defaultValue]) {
  if (value is T) {
    return value;
  }
  try {
    if (value != null) {
      final valueS = value.toString();
      if ('' is T) {
        return valueS as T;
      } else if (0 is T) {
        return int.parse(valueS) as T;
      } else if (0.0 is T) {
        return double.parse(valueS) as T;
      } else if (false is T) {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else {
        return FFConvert.convert<T>(value);
      }
    }
  } catch (e, stackTrace) {
    log('asT<$T>', error: e, stackTrace: stackTrace);
    return defaultValue;
  }

  return defaultValue;
}

void tryCatch(Function? f) {
  try {
    f?.call();
  } catch (e, stack) {
    log('$e');
    log('$stack');
  }
}


// 尝试类型装换 -- 列表类型
List<dynamic> tryCoverList(String result, String paramsKey) {
  if (result.isEmpty) return <dynamic>[];
  try {
    final map = jsonDecode(result);
    if (map[paramsKey] is List<dynamic>) {
      final arr = map[paramsKey] as List<dynamic>;
      return arr;
    }
  } catch (e) {
    return <dynamic>[];
  }

  return <dynamic>[];
}


class TResult<T> {
  int code;
  final String message;
  T? _data;
  TResult(this.code,this.message,this._data);

  factory TResult.defaultValue()=>TResult(10001, 'error', null);
  static TResult get kDefault => TResult.defaultValue();

  set setData(T? v)=>_data = v;
  T? get getData => _data;

  @override
  String toString() {
    return 'code:$code,message:$message,data:$_data';
  }
}

class KEmptyErrorWidget extends StatelessWidget {
  final Object error;
  final StackTrace? stackTrace;
  const KEmptyErrorWidget(this.error,this.stackTrace,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

