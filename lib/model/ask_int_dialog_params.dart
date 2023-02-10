import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_int_dialog_params.freezed.dart';
part 'ask_int_dialog_params.g.dart';


@freezed
class AskIntDialogParams with _$AskIntDialogParams {
  const factory AskIntDialogParams({
    @Default("") String placeholder,
    @Default("") String title,
    @Default("Ok") String okBtnText,
    @Default("Cancel") String cancelBtnText
    }) = _AskIntDialogParams;
  
  factory AskIntDialogParams.fromJson(Map<String, dynamic> json) => _$AskIntDialogParamsFromJson(json);
}

