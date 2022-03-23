import 'package:flutter/material.dart';

class Transaction extends ChangeNotifier {
  String? currency;
  String? status;
  var creationdate;
  double? buyRate;
  double? minersFee;
  String? cryptoAddress;
  //continue from here
  String? paymentToName;
  String? paymentFromName;
  int? paymentFrom;
  int? paymentTo;
  double? price;
  bool? isBuying;
  List<Transaction> _transactions = [];

  Transaction({
    this.currency,
    this.status,
    this.creationdate,
    this.buyRate,
    this.cryptoAddress,
    this.isBuying,
    this.minersFee,
    this.paymentFromName,
    this.paymentToName,
    this.paymentFrom,
    this.paymentTo,
    this.price,
  });

  List<Transaction> get transactions => _transactions;
}
