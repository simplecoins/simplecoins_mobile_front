import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  List? currencies = ['Bitcoin', 'USDT', 'Ripple'];
  List? status = ['AWAITING PAYMENT', 'PROCESSING', 'PROCESSED', 'CANCELLED'];

  double _buyRate = 5.70;
  double _btcRate = 0.000017;

  AppData({this.currencies, this.status});
}
