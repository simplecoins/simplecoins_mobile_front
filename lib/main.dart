

import 'package:flutter/material.dart';
import 'package:simplecoins_0/screens/changepassword/changepassword.dart';
import 'package:simplecoins_0/screens/choosepaymentnumber/choosepaymentnumber.dart';
import 'package:simplecoins_0/screens/choosereceivingnumber/choosereceivingnumber.dart';
import 'package:simplecoins_0/screens/coinpayment/coinpayment.dart';
import 'package:simplecoins_0/screens/enteramount/enteramount.dart';
import 'package:simplecoins_0/screens/entersellamount/entersellamount.dart';
import 'package:simplecoins_0/screens/enterwalletaddress/enterwalletaddress.dart';
import 'package:simplecoins_0/screens/home/home.dart';
import 'package:simplecoins_0/screens/onboarding/onboarding.dart';
import 'package:simplecoins_0/screens/passwordchangesuccess/passwordchangesuccess.dart';
import 'package:simplecoins_0/screens/paymentinfo/paymentinfo.dart';
import 'package:simplecoins_0/screens/sellsummary/sellsummary.dart';
import 'package:simplecoins_0/screens/signin/signin.dart';
import 'package:simplecoins_0/screens/signup/signup.dart';
import 'package:simplecoins_0/screens/splash/splash.dart';
import 'package:simplecoins_0/screens/summary/summary.dart';
import 'package:simplecoins_0/screens/transactionhistory_selected/thistory_selected.dart';
import 'package:simplecoins_0/screens/transactions/transactions.dart';
import 'package:simplecoins_0/screens/transactionsuccess/transactionsuccess.dart';
import 'package:simplecoins_0/screens/userprofile/userprofile.dart';
import 'package:simplecoins_0/screens/wrapper/wrapper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/onboarding',
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
      '/userprofile': (context) => UserProfile(),
      '/changepassword': (context) => ChangePassword(),
      '/passwordchangesuccess': (context) => PasswordChangeSuccess(),
      '/entersellamount': (context) => EnterSellAmount(),
      '/choosereceivingnumber': (context) => ChooseReceivingNumber(),
      '/sellsummary': (context) => SellSummary(),
      '/coinpayment': (context) => CoinPayment(),
      '/transactionSuccess': (context) => TransactionSuccess()
    }
  ));
}


