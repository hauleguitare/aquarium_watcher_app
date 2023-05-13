import 'package:aquarium_watcher_app/core/abstractions/services/share_preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesServiceImpl implements SharedPreferencesService{
  final SharedPreferences prefs;
  SharedPreferencesServiceImpl(this.prefs);


  @override
  Future<bool> setValueString(String key, String value) async {
      return prefs.setString(key, value);
  }

  @override
  Future<String?> getValueString(String key) async {
    return prefs.getString(key);
  }

  @override
  Future<bool> setValueInt(String key, int value) async {
    return prefs.setInt(key, value);
  }

  @override
  Future<int?> getValueInt(String key) async {
    return prefs.getInt(key);
  }

  @override
  Future<bool> setValueBool(String key, bool value) async {
    return prefs.setBool(key, value);
  }

  @override
  Future<bool> clear() async{
    return prefs.clear();
  }

  @override
  Future<bool> remove(String key) async {
    return prefs.remove(key);
  }
}