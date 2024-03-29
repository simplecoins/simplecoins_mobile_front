import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/numpad.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class EnterAmount extends StatefulWidget {
  @override
  _EnterAmountState createState() => _EnterAmountState();
}

class _EnterAmountState extends State<EnterAmount> {
  // TextEditingController _controller = TextEditingController();
  String text = '';
  bool _isactive = false;

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      print('$value tapped');
      print(int.parse(text));
    });
  }

  // PASS STRING TO TEXT TO BE USED
  // _parse() {
  //   var parsetest = int.parse(text);
  //   print(parsetest);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
          'Buy Bitcoin',
          style: TextStyle(color: Colors.black),
        ),
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
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(28.0),
            ),
            Text('How much BTC you wish to buy'),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            ),
            RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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
                      text: text.isEmpty ? '0.00' : text,
                      style: TextStyle(
                          color: Color(0xFF757575),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(60))),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(34.0),
            ),
            Text(
              'GHS 0.00',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11.0),
            ),
            // int.parse(text) < 50
            //     ?
            Text(
              'GHS 50.00 Minimum buy',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(12),
                  color: Color(0xFFE56565)),
            ),
            //     : Offstage(),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
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
              // bcolor: Color(0xFF001233),
              // tcolor: Colors.white,
              isActive: text == null || text == '' ? false : true,
              text: 'Next',
              press: () {
                priceTemp = double.parse(text);
                print(text);
                minersFeeTemp = priceTemp! * 0.01;
                print(minersFeeTemp);
                creationdateTemp = DateTime.now();
                Navigator.pushNamed(context, '/payment');
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
