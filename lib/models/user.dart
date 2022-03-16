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
}
