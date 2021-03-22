import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/copynumber.dart';


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
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  });
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Success Gif/giphy.gif',
              height: 123.0,
            ),
            SizedBox(
              height: 19.0,
            ),
            // Text(
            //   'Awesome!!',
            //   style: TextStyle(
            //     fontFamily: 'Manrope',
            //     fontWeight: FontWeight.w400,
            //     fontSize: 18
            //   ),
            // ),
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
            SizedBox(
              height: 44.0,
            ),
            // Row(
            //   children: [
            //     Container(
            //       height: 10.0,
            //       width: double.infinity,
            //       child: Placeholder()
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Send 775.32 GHS ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600
                        )
                      ),
                      TextSpan(text: 'to'),
                    ],
                  ),
                ),
              ],
            ),

            //Edit name isolation

            CopyNumber(),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Emojis/image 13.png',
                  height: 15.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Use Refrence: Simplecoins',
                  style: TextStyle(
                    color: Color(0xFF3B32A7),
                    fontSize: 12,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600
                  )
                )
              ],
            ),
            Spacer(),
            DefaultButton(
              text: 'Done',
              press: () {
              },
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

