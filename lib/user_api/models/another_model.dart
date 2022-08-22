// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

// part 'welcome.freezed.dart';
// part 'welcome.g.dart';

// @freezed
// abstract class Welcome with _$Welcome {
//   const factory Welcome({
//     int id,
//     String name,
//     String username,
//     String email,
//     Address address,
//     String phone,
//     String website,
//     Company company,
//   }) = _Welcome;

//   factory Welcome.fromJson(Map<String, dynamic> json) =>
//       _$WelcomeFromJson(json);
// }

// @freezed
// abstract class Address with _$Address {
//   const factory Address({
//     String street,
//     String suite,
//     String city,
//     String zipcode,
//     Geo geo,
//   }) = _Address;

//   factory Address.fromJson(Map<String, dynamic> json) =>
//       _$AddressFromJson(json);
// }

// @freezed
// abstract class Geo with _$Geo {
//   const factory Geo({
//     String lat,
//     String lng,
//   }) = _Geo;

//   factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
// }

// @freezed
// abstract class Company with _$Company {
//   const factory Company({
//     String name,
//     String catchPhrase,
//     String bs,
//   }) = _Company;

//   factory Company.fromJson(Map<String, dynamic> json) =>
//       _$CompanyFromJson(json);
// }
