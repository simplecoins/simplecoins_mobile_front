import 'package:flutter/material.dart';

class TransactionSuccess extends StatefulWidget {
  @override
  _TransactionSuccessState createState() => _TransactionSuccessState();
}

class _TransactionSuccessState extends State<TransactionSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Success Gif/giphy.gif',
                  width: 104.0,
                ),
              ],
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.black
              ),
                children: <TextSpan>[
                  TextSpan(text: 'Awesome!!\nYou just placed an order to Buy '),
                  TextSpan(
                      text: 'GHS\n 738.00 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600
                      )
                    ),
                  TextSpan(text: 'worth of Bitcoin.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}