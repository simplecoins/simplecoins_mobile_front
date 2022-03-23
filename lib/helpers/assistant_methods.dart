import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/models/user.dart';

class AssistantMethods with ChangeNotifier {
  // Future<void> getSavedPrefs(context) async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   Provider.of<User>(context, listen: false).setUser(
  //       '11',
  //       pref.getString('email')!,
  //       pref.getString('phone')!,
  //       pref.getString('name')!,
  //       'sadafasfakfjbwi2');
  //   notifyListeners();
  // }
}

setUserLogins() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  userLogin!.name = await pref.getString('name');
  userLogin!.email = await pref.getString('email');
  userLogin!.id = await pref.getString('id');
  userLogin!.phone = await pref.getString('phone');
  userLogin!.token = await pref.getString('token');
  print(pref.getString('token'));
  print(pref.getString('id'));
}

// void getPrefs() async {
//   SharedPreferences pref = await SharedPreferences.getInstance();
//   print(pref.getString('phone'));
//   User().setUser(User(
//       id: '11',
//       email: pref.getString('email'),
//       phone: pref.getString('phone'),
//       name: pref.getString('name'),
//       token: 'sadafasfakfjbwi2'));
// }

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

Future<void> signUp(context, String name, String email) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("jwt", '24yetbf8214g7b34t943df3');
  pref.setBool("is_login", true);
  pref.setString('name', name);
  pref.setString('email', email);
  pref.setString('phone', '233557113242');
  pref.setString('id', '101');
  Provider.of<User>(context, listen: false).setUserObj(User(
      id: '11',
      email: pref.getString('email'),
      phone: pref.getString('phone'),
      name: pref.getString('name'),
      token: 'sadafasfakfjbwi2'));
}

Future<void> signIn(context, String email, String password) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("jwt", '24yetbf8214g7b34t943df3');
  pref.setBool("is_login", true);
  pref.setString('email', email);
  pref.setString('name', 'Desmond Sofua');
  pref.setString('password', password);
  pref.setString('token', 'sadafasfakfjbwi2');
  pref.setString('id', '101');
  Provider.of<User>(context, listen: false).setUserObj(User(
      id: '11',
      email: pref.getString('email'),
      phone: '233557113242',
      name: 'John Doe',
      token: 'sadafasfakfjbwi2'));
}

Future<void> clearUserLogin() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.remove('jwt');
  pref.setBool("is_login", false);
}
