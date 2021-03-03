import 'package:flutter/material.dart';

class ChoosePaymentNumber extends StatefulWidget {
  @override
  _ChoosePaymentNumberState createState() => _ChoosePaymentNumberState();
}

class _ChoosePaymentNumberState extends State<ChoosePaymentNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Payment Method',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}