import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/copynumber.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Success Gif/giphy.gif',
              height: getProportionateScreenHeight(123.0),
            ),
            SizedBox(
              height: getProportionateScreenHeight(19.0),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'Awesome!!\nYou just placed an order to Buy '),
                  TextSpan(
                      text: 'GHS\n ${priceTemp! * buyRate} ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(18),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600)),
                  TextSpan(text: 'worth of Bitcoin.'),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(44.0),
            ),
            Image.asset(
              'assets/Payment Info/akar-icons_arrow-down.png',
              // width: 14.0,
              height: getProportionateScreenHeight(26.0),
            ),
            SizedBox(
              height: getProportionateScreenHeight(44.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(16),
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Send ${priceTemp! * buyRate} GHS ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(16),
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600)),
                      TextSpan(text: 'to'),
                    ],
                  ),
                ),
              ],
            ),

            //Edit name isolation

            CopyNumber(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Emojis/image 13.png',
                  height: getProportionateScreenHeight(15.0),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(5.0),
                ),
                Text('Use Reference: Simplecoins',
                    style: TextStyle(
                        color: Color(0xFF3B32A7),
                        fontSize: getProportionateScreenWidth(12),
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600))
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  value: isPInfoChecked,
                  onChanged: (value) {
                    setState(() {
                      isPInfoChecked = !isPInfoChecked;
                    });
                  },
                ),
                SizedBox(
                  width: getProportionateScreenWidth(33.0),
                ),
                Text(
                  'Select to confirm you have made the above payment',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12.0),
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575),
                  ),
                )
              ],
            ),
            Spacer(),
            DefaultButton(
              text: 'Done',
              press: () {
                transactions.add(
                  Transaction(
                    currency: currencies[0],
                    status: statusTemp,
                    creationdate: creationdateTemp,
                    buyRate: buyRateTemp,
                    minersFee: minersFeeTemp,
                    cryptoAddress: cryptoAddressTemp,
                    paymentFromName: paymentFromNameTemp,
                    paymentFrom: paymentFromTemp,
                    paymentTo: paymentToTemp,
                    price: priceTemp,
                    isBuying: isBuyingTemp
                  )
                );
                isPInfoChecked
                    ? Navigator.pushNamed(context, '/home')
                    : print('Payment Info; invalid tap');
              },
              bcolor: isPInfoChecked ? Color(0xFF001233) : Color(0xFFF2F2F2),
              tcolor: isPInfoChecked ? Colors.white : Color(0xFFAAABAE),
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
