import 'dart:convert';

import 'package:fit/domain/frameworks/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageImpl implements LocalStorage {
  LocalStorageImpl(this._sharedPreferences);

  final SharedPreferencesAsync _sharedPreferences;

  @override
  Future<Map<String, dynamic>?> getJson(String key) async {
    final jsonString = await _sharedPreferences.getString(key);

    if (jsonString != null) {
      return json.decode(jsonString);
    }

    return null;
  }

  @override
  Future<void> setJson(String key, Map<String, dynamic>? value) async {
    if (value != null) {
      await _sharedPreferences.setString(key, json.encode(value));
    } else {
      await _sharedPreferences.remove(key);
    }
  }

  @override
  Future<void> remove(String key) async {
    return _sharedPreferences.remove(key);
  }

  @override
  Future<void> clear() async {
    return _sharedPreferences.clear();
  }
}
