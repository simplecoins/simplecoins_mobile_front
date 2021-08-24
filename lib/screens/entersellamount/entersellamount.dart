import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/numpad.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class EnterSellAmount extends StatefulWidget {
  @override
  _EnterSellAmountState createState() => _EnterSellAmountState();
}

class _EnterSellAmountState extends State<EnterSellAmount> {
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      print('$value tapped');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
        title: Text(
          'Sell Bitcoin',
          style: TextStyle(color: Colors.black),
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
        padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('How much BTC you wish to sell'),
            SizedBox(
              height: getProportionateScreenHeight(15.0),
            ),
            //change to richtext
             RichText(
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(60)),
                children: <TextSpan>[
                  TextSpan(text: '\$ '),
                  TextSpan(
                      text: '$text',
                      style: TextStyle(
                          color: Color(0xFF757575),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(60))),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(35.0),
            ),
            Text(
              'GHS 0.00',
              style: TextStyle(fontFamily: 'Manrope'),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11.0),
            ),
            Text(
              'GHS 50.00 Minimum buy',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(12),
                  color: Color(0xFFE56565)),
            ),
            Spacer(),
            NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.black,
              rightButtonFn: () {
                setState(() {
                  text = text.substring(0, text.length - 1);
                });
              },
              rightIcon: Icon(
                Icons.backspace,
                color: Colors.black,
              ),
              leftButtonFn: () {
                print('left button clicked');
              },
              leftIcon: Icon(
                Icons.check,
                color: Colors.red,
              ),
            ),
            Spacer(),
            DefaultButton(
              bcolor: Color(0xFF001233),
              tcolor: Colors.white,
              text: 'Next',
              press: () {
                priceTemp = double.parse(text);
                print(text);
                minersFeeTemp = 0;
                print(minersFeeTemp);
                creationdateTemp = DateTime.now();
                Navigator.pushNamed(context, '/choosereceivingnumber');
              },
            ),
            SizedBox(
              height: getProportionateScreenHeight(25.0),
            )
          ],
        ),
      ),
    );
  }
}
