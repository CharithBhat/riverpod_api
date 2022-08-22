import 'dart:convert';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_apli/constants.dart';
import 'package:riverpod_apli/user_api/models/all_models.dart';
import 'package:riverpod_apli/user_api/models/user_model/user_model.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // Map<String, dynamic> item = json.decode(response.body);
        // log(item[0].toString());
        // assert(item[0].runtimeType == Map<String, dynamic>);

        // UserModel model3 = UserModel.fromJson(item[0] as Map<String, dynamic>);
        // log(model3.toString());
        // List<UserModel> model1 = List<UserModel>.from(
        //   item.map(
        //     (model) => UserModel.fromJson(model),
        //   ),
        // );
        // final map = json.decode(response.body)[0];
        // log(UserModel.fromJson(map).toString());
        List<UserModel> model = userModelFromJson(response.body);
        // if (model == null) print('Your model was null');
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
