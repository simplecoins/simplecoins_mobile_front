import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isFirstTime() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  var isFirstTime = pref.getBool('first_time');
  if (isFirstTime != null && !isFirstTime) {
    pref.setBool('first_time', false);
    return false;
  } else {
    pref.setBool('first_time', false);
    return true;
  }
}

Future<void> setUserLogin(String authToken) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("jwt", authToken);
  pref.setBool("is_login", true);
}

Future<void> clearUserLogin() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.remove('jwt');
  pref.setBool("is_login", false);
}
