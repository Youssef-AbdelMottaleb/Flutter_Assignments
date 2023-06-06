import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {

  static late SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveCounter(int count) async {
    return await prefs.setInt("counter", count);
  }

  static int getCounter() {
    return prefs.getInt("counter") ?? 0;
  }

  static Future<bool> saveIfNotFirstTime() async {
    return await prefs.setBool("isFirstTime", false);
  }

  static bool getIfFirstTime() {
    return prefs.getBool("isFirstTime") ?? true;
  }

  static Future<bool> saveToken(String token) async {
    return await prefs.setString("token", token);
  }

  static String getToken() {
    return prefs.getString("token") ?? "";
  }

  static Future<bool> saveImage(String imageUrl) async {
    return await prefs.setString("image", imageUrl);
  }

  static String getImage() {
    return prefs.getString("image") ??
        "data:image/jpeg;base64,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";
  }

  static Future<bool> saveName(String name) async {
    return await prefs.setString("name", name);
  }

  static String getName() {
    return prefs.getString("name") ?? "Amr Bakr";
  }

  static Future<bool> saveFullName(String fullName) async {
    return await prefs.setString("full_name", fullName);
  }

  static String getFullName() {
    return prefs.getString("full_name") ?? "Amr Mohammed Hassan Ammer";
  }

  static Future<bool> saveEmail(String email) async {
    return await prefs.setString("email", email);
  }

  static String getEmail() {
    return prefs.getString("email") ?? "amramer522@gmail.com";
  }

  static Future<bool> savePhone(String phone) async {
    return await prefs.setString("phone", phone);
  }

  static String getPhone() {
    return prefs.getString("phone") ?? "01027545022";
  }

  static Future<bool> saveStatus(String status) async {
    return await prefs.setString("status", status);
  }

  static String getStatus() {
    return prefs.getString("status") ?? "Complicated";
  }

  static Future<bool> saveId(int id) async {
    return await prefs.setInt("id", id);
  }

  static int getId() {
    return prefs.getInt("id") ?? 0;
  }

  static Future<bool> clear() {
    return prefs.clear();
  }
}