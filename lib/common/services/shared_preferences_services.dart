import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  final SharedPreferences sharedPreferences;
  SharedPreferencesService(this.sharedPreferences);


  Future<bool> setValueString(String key, String value) async {
      return sharedPreferences.setString(key, value);
  }

  Future<String?> getValueString(String key) async {
    return sharedPreferences.getString(key);
  }

  Future<bool> setValueInt(String key, int value) async {
    return sharedPreferences.setInt(key, value);
  }

  Future<int?> getValueInt(String key) async {
    return sharedPreferences.getInt(key);
  }

  Future<bool> setValueBool(String key, bool value) async {
    return sharedPreferences.setBool(key, value);
  }
}