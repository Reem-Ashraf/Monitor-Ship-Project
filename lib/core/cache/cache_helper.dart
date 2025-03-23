import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO: Implement Singleton pattern with caching and limit cache size for faster access.
class CacheHelper {
  static late SharedPreferences _sharedPreferences;
  static const _secureCache = FlutterSecureStorage();

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);
    return await _sharedPreferences.setStringList(key, value);
  }

  static dynamic getData({
    required String key,
  }) {
    return _sharedPreferences.get(key);
  }

  static Future<bool> removeData({
    required String key,
  }) async {
    return await _sharedPreferences.remove(key);
  }

  static Future<bool> clearData() async {
    return await _sharedPreferences.clear();
  }

  static Future<void> setSecureData({
    required String key,
    required String value,
  }) async {
    await _secureCache.write(key: key, value: value);
  }

  static Future<String?> getSecureData({
    required String key,
  }) async {
    return await _secureCache.read(key: key);
  }

  static Future<void> deleteSecureData({
    required String key,
  }) async {
    await _secureCache.delete(key: key);
  }

  static Future<void> deleteAllSecureData() async {
    await _secureCache.deleteAll();
  }
}
