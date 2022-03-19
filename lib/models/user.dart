import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  String id;
  String email;
  String name;
  String phone;
  String token;

  User({
    this.id,
    this.email,
    this.name,
    this.phone,
    this.token,
  });

  User _user;

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
