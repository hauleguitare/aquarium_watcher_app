abstract class SharedPreferencesService{
  Future<bool> setValueString(String key, String value);
  Future<String?> getValueString(String key);
  Future<bool> setValueInt(String key, int value);
  Future<int?> getValueInt(String key);
  Future<bool> setValueBool(String key, bool value);
  Future<bool> clear();
  Future<bool> remove(String key);
}