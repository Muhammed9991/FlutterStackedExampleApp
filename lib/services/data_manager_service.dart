import 'package:shared_preferences/shared_preferences.dart';

class DataManagerService {
  Future<bool> isStringDataAvailable(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) != null;
  }

  Future<String> loadString(String key) async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getString(key) != null) {
      return prefs.getString(key)!;
    } else {
      throw Exception('Umable to get store value for key -> $key');
    }
  }

  Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<bool> deleteAll() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }
}
