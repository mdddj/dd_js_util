import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_ok_dialog_params.freezed.dart';
part 'ask_ok_dialog_params.g.dart';


@freezed
class AskOkDialogParams with _$AskOkDialogParams {
  const factory AskOkDialogParams({
    @Default("") String contentText,
    @Default("Ok") String okText,
    @Default("Cancel") String cancelText,
    @JsonKey(toJson: null,fromJson: null,includeToJson: false,includeFromJson: false) Widget? title
    }) = _AskOkDialogParams;
  
  factory AskOkDialogParams.fromJson(Map<String, dynamic> json) => _$AskOkDialogParamsFromJson(json);
}

