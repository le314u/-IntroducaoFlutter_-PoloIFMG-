import 'package:shared_preferences/shared_preferences.dart';

class Sync{

  static Future<String> get(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return (prefs.getString(key) ?? "");
  }
  static set(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
}

