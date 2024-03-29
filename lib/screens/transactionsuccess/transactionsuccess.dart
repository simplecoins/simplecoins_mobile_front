import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

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
            padding: EdgeInsets.only(right: getProportionateScreenWidth(8.0)),
            //close button
            child: IconButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/home'));
              },
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(151.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Success Gif/giphy.gif',
                  width: getProportionateScreenWidth(104.0),
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
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Awesome!!\nYou just placed an order to Buy\n'),
                  TextSpan(
                      text: 'GHS ${priceTemp! * buyRate} ',
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
              height: getProportionateScreenHeight(41.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'We are now ',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.black),
                ),
                Container(
                  width: getProportionateScreenWidth(122.0),
                  height: getProportionateScreenHeight(27.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFDCE1FF),
                      borderRadius: BorderRadius.circular(52.0)),
                  child: Center(
                    child: Text(
                      'PROCESSING',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4F49C1)),
                    ),
                  ),
                ),
                Text(
                  ' your order',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.black),
                ),
              ],
            ),
            Spacer(),
            DefaultButton(
              bcolor: Color(0xFF001233),
              tcolor: Colors.white,
              text: 'View my transactions',
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
                Navigator.of(context).pushNamedAndRemoveUntil('/transactions', ModalRoute.withName('/home'));
              },
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
