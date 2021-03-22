import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/savednumber.dart';
import 'package:simplecoins_0/enum/constants.dart';

class SellSummary extends StatefulWidget {
  @override
  _SellSummaryState createState() => _SellSummaryState();
}

class _SellSummaryState extends State<SellSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Checkout',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w600,
            fontSize: 17.0
          ),
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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'YOU ARE SELLING',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      '\$ 300.00',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      '0.00034' ' BTC',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1857BB)
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You Receive',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GHC '+'345.89',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       'BTC address',
            //       style: TextStyle(
            //         fontFamily: 'Manrope',
            //         fontSize: 18,
            //         fontWeight: FontWeight.w500
            //       ),
            //     )
            //   ],
            // ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
            //       style: TextStyle(
            //         fontFamily: 'Manrope',
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500
            //       ),
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 60.0,
            // ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account to receive your funds',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            SavedNumber(
              imgPath: 'assets/MoMo Networks/MTN.png',
              numberText: '0503456748',
              networkText: 'Desmond Sofua',
              press: () {},
            ),
            SizedBox(
              height: 68.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  value: isSellSummaryChecked,
                  onChanged: (value) {
                    setState(() {
                      isSellSummaryChecked = !isSellSummaryChecked;
                    });
                  },
                ),
                RichText(
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
                      TextSpan(text: 'I certify that I am '),
                      TextSpan(
                          text: '18 years of age or older, ',
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                      TextSpan(text: 'and '),
                      TextSpan(text: 'agree\nto the '),
                      TextSpan(
                        text: 'User Agreement',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          decoration: TextDecoration.underline
                        )
                      ),
                      TextSpan(text: ' and its return, '),
                      TextSpan(text: 'refund and\ncancellation policy'),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            DefaultButton(
              text: 'Buy Bitcoin',
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