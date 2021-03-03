import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/numpad.dart';

class EnterAmount extends StatefulWidget {
  @override
  _EnterAmountState createState() => _EnterAmountState();
}

class _EnterAmountState extends State<EnterAmount> {
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      print('$value tapped');
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
          onPressed: () {},
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
            onPressed: () {},
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('How much BTC you wish to buy'),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '\$ $text',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  fontSize: 60),
            ),
            Text(
              'GHS 0.00',
              style: TextStyle(fontFamily: 'Manrope'),
            ),
            NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.black,
              rightButtonFn: () {
                setState(() {
                  text = text.substring(0, text.length - 1);
                  _parse();
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
              text: 'Next',
              press: () {},
            ),
            SizedBox(
              height: 25.0,
            )
          ],
        ),
      ),
    );
  }
}