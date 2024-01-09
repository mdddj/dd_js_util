import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'byte_model.freezed.dart';

extension ByteModelEx on ByteModel {
  String get unit {
    return map(
      bytes: (value) => "B",
      kb: (value) => "KB",
      mb: (value) => "MB",
      gb: (value) => 'GB',
      tb: (value) => "TB",
    );
  }

  ///格式化显示大小
  String format([int fixed = 1]) => '${value.toStringAsFixed(fixed)}$unit';
}

@freezed
class ByteModel with _$ByteModel {
  const ByteModel._();

  const factory ByteModel.bytes(double value) = BytesModel;

  const factory ByteModel.kb(double value) = KbModel;

  const factory ByteModel.mb(double value) = MbModel;

  const factory ByteModel.gb(double value) = GbModel;

  const factory ByteModel.tb(double value) = TbModel;

  factory ByteModel.create(double bytes) {
    const int kb = 1024;
    const int mb = kb * 1024;
    const int gb = mb * 1024;
    const int tb = gb * 1024;
    if (bytes >= tb) {
      return ByteModel.tb((bytes / tb));
    } else if (bytes >= gb) {
      return ByteModel.gb(bytes / gb);
    } else if (bytes >= mb) {
      return ByteModel.mb(bytes / mb);
    } else if (bytes >= kb) {
      return ByteModel.kb(bytes / kb);
    } else {
      return ByteModel.bytes(bytes);
    }
  }

  factory ByteModel.createFromFile(File file) {
    final len = file.lengthSync();
    return ByteModel.create(len.toDouble());
  }
}
