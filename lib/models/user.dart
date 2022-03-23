import 'package:flutter/material.dart';
import 'package:simplecoins_0/enum/constants.dart';

class User extends ChangeNotifier {
  String? id;
  String? email;
  String? name;
  String? phone;
  String? token;

  User({
    this.id,
    this.email,
    this.name,
    this.phone,
    this.token,
  });

  User? _user;

  User? get user => _user;

  // void setUser(String nameIO, String phoneIO, String emailIO, String tokenIO,
  //     String idIO) {
  //   name = nameIO;
  //   email = emailIO;
  //   phone = phoneIO;
  //   token = tokenIO;
  //   id = idIO;
  //   notifyListeners();
  // }

  void transferLogin() {
    name = userLogin!.name!;
    phone = userLogin!.phone!;
    email = userLogin!.email!;
    token = userLogin!.token!;
    id = userLogin!.id!;
    notifyListeners();
  }

  Future<void> setUserObj(User user) async {
    _user = user;
    notifyListeners();
  }
}
