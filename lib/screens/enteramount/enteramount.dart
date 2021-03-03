import 'package:flutter/material.dart';

class EnterAmount extends StatefulWidget {
  @override
  _EnterAmountState createState() => _EnterAmountState();
}

class _EnterAmountState extends State<EnterAmount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Buy Bitcoin',
          style: TextStyle(color: Colors.black),
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
