import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_model.freezed.dart';
part 'geo_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class GeoModel with _$GeoModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory GeoModel({
    required String lat,
    required String lng,
  }) = _GeoModel;

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);
}
