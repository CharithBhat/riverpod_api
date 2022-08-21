import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:riverpod_apli/constants.dart';
import 'package:riverpod_apli/user_api/models/user_model/user_model.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      // print(response.statusCode.toString());
      if (response.statusCode == 200) {
        print(response.statusCode.toString());
        print(userModelFromJson(response.body).toString());
        // List<UserModel> model = userModelFromJson(response.body);
        List<UserModel> model =
            UserModel.fromJson(response.body as Map<String, dynamic>)
                as List<UserModel>;
        print("right here again" + model[0].toString());
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
