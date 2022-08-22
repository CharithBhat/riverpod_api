import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_apli/user_api/models/geo_model/geo_model.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class AddressModel with _$AddressModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory AddressModel({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required GeoModel geo,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
