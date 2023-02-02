import 'package:diox/diox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_params.freezed.dart';

typedef DioStart = void Function(Dio dio, String url);
@freezed
class RequestParams with _$RequestParams {

  const factory RequestParams(
      {@Default(true) bool showErrorMsg,
      @Default("loading...") String loadingText,
      @Default('') String contentType,
      @Default({}) Map<String, dynamic> headers,
      @Default(true) bool showDefaultLoading,
      dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder,
      DioStart? dioStart,
      bool? returnIsString,
      @Default(false) bool isFullUrl}) = _RequestParams;
}
