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
