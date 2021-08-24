import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/savednumber.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
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
              fontSize: getProportionateScreenWidth(17.0)),
        ),
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
        padding: EdgeInsets.all(getProportionateScreenWidth(20.0)),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'YOU ARE BUYING',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\$ 300.00',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: getProportionateScreenWidth(30),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'GHS 1740.00',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1857BB)),
                    ),
                    Text(
                      '0.00034 BTC',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(50.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Miner fee',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$5.67',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(25.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BTC address',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(60.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You are paying from',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            ),
            SavedNumber(
              imgPath: 'assets/MoMo Networks/MTN.png',
              numberText: '0503456748',
              networkText: 'Desmond Sofua',
              press: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(68.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  value: isSummaryChecked,
                  onChanged: (value) {
                    setState(() {
                      isSummaryChecked = !isSummaryChecked;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12.0),
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF757575),
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'I certify that I am '),
                      TextSpan(
                          text: '18 years of age or older, ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(12.0))),
                      TextSpan(text: 'and'),
                      TextSpan(text: '\nagree to the '),
                      TextSpan(
                          text: 'User Agreement',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(12.0))),
                      TextSpan(text: ' and its return, '),
                      TextSpan(text: '\nrefund and cancellation policy'),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            DefaultButton(
              text: 'Buy Bitcoin',
              press: () {
                print('clicked');
                statusTemp = status[0];
                isSummaryChecked
                    ? Navigator.pushNamed(context, '/paymentinfo')
                    : print('Summary; invalid tap');
              },
              bcolor: isSummaryChecked ? Color(0xFF001233) : Color(0xFFF2F2F2),
              tcolor: isSummaryChecked ? Colors.white : Color(0xFFAAABAE),
            ),
            SizedBox(
              height: getProportionateScreenHeight(15.0),
            )
          ],
        ),
      ),
    );
  }
}
