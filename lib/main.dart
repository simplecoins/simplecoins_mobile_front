

import 'package:flutter/material.dart';
import 'package:simplecoins_0/screens/choosepaymentnumber/choosepaymentnumber.dart';
import 'package:simplecoins_0/screens/enteramount/enteramount.dart';
import 'package:simplecoins_0/screens/enterwalletaddress/enterwalletaddress.dart';
import 'package:simplecoins_0/screens/home/home.dart';
import 'package:simplecoins_0/screens/onboarding/onboarding.dart';
import 'package:simplecoins_0/screens/paymentinfo/paymentinfo.dart';
import 'package:simplecoins_0/screens/signin/signin.dart';
import 'package:simplecoins_0/screens/signup/signup.dart';
import 'package:simplecoins_0/screens/splash.dart';
import 'package:simplecoins_0/screens/summary/summary.dart';
import 'package:simplecoins_0/screens/transactionhistory_selected/thistory_selected.dart';
import 'package:simplecoins_0/screens/transactions/transactions.dart';
import 'package:simplecoins_0/screens/userprofile/userprofile.dart';
import 'package:simplecoins_0/screens/wrapper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/userprofile',
    routes: {
      '/': (context) => Wrapper(),
      '/splash': (context) => Splash(),
      '/onboarding': (context) => Onboarding(),
      '/signin': (context) => SignIn(),
      '/signup': (context) => SignUp(),
      '/home': (context) => Home(),
      '/enterwalletaddress': (context) => EnterWalletAddress(),
      '/enteramount': (context) => EnterAmount(),
      '/payment': (context) => ChoosePaymentNumber(),
      '/summary': (context) => Summary(),
      '/paymentinfo': (context) => PaymentInfo(),
      '/transactions': (context) => Transactions(),
      '/thistory': (context) => THistorySelected(),
      '/userprofile': (context) => UserProfile()
    }
  ));
}


