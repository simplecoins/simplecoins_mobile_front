import 'package:flutter/material.dart';

class PaymentInfo extends StatefulWidget {
  @override
  _PaymentInfoState createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Success Gif/giphy.gif',
              height: 123.0,
            ),
            Text(
              'Awesome!!'
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF757575),
                ),
                children: <TextSpan>[
                  TextSpan(text: 'You just placed an order to Buy '),
                  TextSpan(
                      text: 'GHS\n 738.00 ',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                  TextSpan(text: 'worth of Bitcoin.'),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF757575),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Send 775.32 GHS ',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                  TextSpan(text: 'to'),
                ],
              ),
            ),
            Container(
              height: 75.0,
              width: 335.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFFF2F2F2)
                ),
                //color: Colors.black
              ),
            )
          ],
        ),
      ),
    );
  }
}