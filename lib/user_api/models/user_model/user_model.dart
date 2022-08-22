import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../address_model/address_model.dart';
import '../company_model/company_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class UserModel with _$UserModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required AddressModel address,
    required String phone,
    required String website,
    required CompanyModel company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));
