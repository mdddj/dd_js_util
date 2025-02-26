import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_support_manager.freezed.dart';


@freezed
sealed class SearchSupportManager with _$SearchSupportManager {
  const factory SearchSupportManager({
    required BuildContext context,
    required StateSetter floatStateSetter,
    required State floatState
    }) = _SearchSupportManager;
  
}

