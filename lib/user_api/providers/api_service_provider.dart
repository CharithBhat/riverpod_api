import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_apli/user_api/services/json_api.dart';

final apiProvider = Provider<ApiService>((ref) => ApiService());
