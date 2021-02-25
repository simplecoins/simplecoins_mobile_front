//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:simplecoins_0/screens/home/home.dart';
import 'package:simplecoins_0/screens/onboarding/onboarding.dart';
import 'package:simplecoins_0/screens/signin/signin.dart';
import 'package:simplecoins_0/screens/signup/signup.dart';
import 'package:simplecoins_0/screens/splash.dart';
import 'package:simplecoins_0/screens/wrapper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/': (context) => Wrapper(),
      '/splash': (context) => Splash(),
      '/onboarding': (context) => Onboarding(),
      '/signin': (context) => SignIn(),
      '/signup': (context) => SignUp(),
      '/home': (context) => Home()
    }
  ));
}


