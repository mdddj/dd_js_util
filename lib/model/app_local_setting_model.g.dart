// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_local_setting_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppLocalSettingModelAdapter extends TypeAdapter<AppLocalSettingModel> {
  @override
  final int typeId = 88;

  @override
  AppLocalSettingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppLocalSettingModel(
      themeIndex: fields[0] == null ? 0 : fields[0] as int,
      themeModel: fields[1] == null ? 0 : fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AppLocalSettingModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.themeIndex)
      ..writeByte(1)
      ..write(obj.themeModel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppLocalSettingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppLocalSettingModelImpl _$$AppLocalSettingModelImplFromJson(Map<String, dynamic> json) => _$AppLocalSettingModelImpl(
      themeIndex: json['themeIndex'] as int? ?? 0,
      themeModel: json['themeModel'] as int? ?? 0,
    );

Map<String, dynamic> _$$AppLocalSettingModelImplToJson(_$AppLocalSettingModelImpl instance) => <String, dynamic>{
      'themeIndex': instance.themeIndex,
      'themeModel': instance.themeModel,
    };
