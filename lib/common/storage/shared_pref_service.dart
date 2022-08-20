import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SharedPrefService {
  Future<bool> setString({
    required String key,
    required String value,
  }) async {
    return await GetIt.I.get<SharedPreferences>().setString(key, value);
  }

  Future<bool> setBool({
    required String key,
    required bool value,
  }) async {
    return await GetIt.I.get<SharedPreferences>().setBool(key, value);
  }

  bool? readBool({
    required String key,
  }) {
    return GetIt.I.get<SharedPreferences>().getBool(key);
  }

  String? readString({
    required String key,
  }) {
    return GetIt.I.get<SharedPreferences>().getString(key);
  }
}
