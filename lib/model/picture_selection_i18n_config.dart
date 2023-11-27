import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_selection_i18n_config.freezed.dart';
part 'picture_selection_i18n_config.g.dart';

@freezed
class PictureSelectionI18nConfig with _$PictureSelectionI18nConfig {
  const PictureSelectionI18nConfig._();

  const factory PictureSelectionI18nConfig(
      {@JsonKey(name: 'photoAlbumMenuText') @Default('相册') String photoAlbumMenuText,
      @Default('去拍摄') String goShootText}) = _PictureSelectionI18nConfig;

  factory PictureSelectionI18nConfig.fromJson(Map<String, dynamic> json) => _$PictureSelectionI18nConfigFromJson(json);
}
