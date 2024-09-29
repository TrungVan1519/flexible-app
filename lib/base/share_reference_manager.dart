import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  SharedPreferencesManager({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  bool containsKey(String key) => sharedPreferences.containsKey(key);

  Future<bool?>? putStringList(String key, List<String> value) {
    return sharedPreferences.setStringList(key, value);
  }

  List<String>? getStringList(String key) {
    return sharedPreferences.getStringList(key);
  }

  Future<bool?>? putBool(String key, bool value) {
    return sharedPreferences.setBool(key, value);
  }

  bool? getBool(String key) {
    return sharedPreferences.getBool(key);
  }

  Future<bool?>? putString(String key, String value) {
    return sharedPreferences.setString(key, value);
  }

  String? getString(String key) {
    return sharedPreferences.getString(key);
  }

  Future<bool?>? putInt(String key, int value) {
    return sharedPreferences.setInt(key, value);
  }

  int? getInt(String key) {
    return sharedPreferences.getInt(key);
  }

  Future? clear() {
    return sharedPreferences.clear();
  }

  Future<bool> remove(String key) {
    return sharedPreferences.remove(key);
  }
}
