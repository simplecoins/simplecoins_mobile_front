import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';

class CoinPayment extends StatefulWidget {
  @override
  _CoinPaymentState createState() => _CoinPaymentState();
}

class _CoinPaymentState extends State<CoinPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Coin Payment',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 17.0),
        ),
        //back button
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        //close button
        actions: [
          IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
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
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70.0,
                ),
                Text(
                  'You Would Need To',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF787879)),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Send 3324 XRP ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600)),
                      TextSpan(text: 'to '),
                      TextSpan(
                          text: 'our XRP Wallet ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text:
                              'address\n below and you will automatically receive\nyour Mobile Money transfer after\nconfirmation.'),
                      TextSpan(text: 'worth of Bitcoin.'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 75.0,
                  width: 335.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFF2F2F2)),
                    //color: Colors.black
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 14.0,
                      ),
                      Text(
                        '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // SizedBox(
                      //   width: 14.0,
                      // ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFBFDBFE),
                              borderRadius: BorderRadius.circular(10.0)),
                          height: 63.0,
                          width: 60.0,
                          child: Center(
                            child: Text('Copy',
                                style: TextStyle(
                                    color: Color(0xFF1D4ED8),
                                    fontSize: 12,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Or Scan the QR code below ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text:
                              'by using\n the scan feature in your ripple wallet '),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Image.asset(
              'assets/qr code/clarity_qr-code-line.png',
              width: 129.0,
            ),
            Spacer(),
            DefaultButton(
              bcolor: Color(0xFF001233),
              tcolor: Colors.white,
              text: 'I have made the payment',
              press: () {},
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
