import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_apli/user_api/models/user_model/user_model.dart';
import 'package:riverpod_apli/user_api/providers/api_service_provider.dart';

final userDataProvider = FutureProvider<List<UserModel>?>(
  (ref) async {
    return ref.watch(apiProvider).getUsers();
  },
);
