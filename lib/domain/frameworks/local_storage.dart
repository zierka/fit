abstract class LocalStorage {
  Future<Map<String, dynamic>?> getJson(String key);

  Future<void> setJson(String key, Map<String, dynamic>? value);
  Future<void> remove(String key);
  Future<void> clear();
}
