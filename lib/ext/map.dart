


import '../api/base.dart';

extension MapExt on Map<String,dynamic>{

  @Doc(message: 'List<dynamic> to List<String>')
  List<String> mapValueGetWithListString(String key){
    return List<String>.from(([key]).map((e) => e.toString())).toList();
  }
}