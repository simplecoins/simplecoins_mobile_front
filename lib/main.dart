//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:simplecoins_0/screens/onboarding/onboarding.dart';
import 'package:simplecoins_0/screens/splash.dart';
import 'package:simplecoins_0/screens/wrapper.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/onboarding',
    routes: {
      '/': (context) => Wrapper(),
      '/splash': (context) => Splash(),
      '/onboarding': (context) => Onboarding(),
    }
  ));
}


