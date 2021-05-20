import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/enum/constants.dart';

class EnterWalletAddress extends StatefulWidget {
  @override
  _EnterWalletAddressState createState() => _EnterWalletAddressState();
}

class _EnterWalletAddressState extends State<EnterWalletAddress> {
  TextEditingController cryptoAddressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          '$cryptoType Address',
          style: TextStyle(color: Colors.black),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/Homescreen/$cryptoType.png',
              width: 52.0,
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Your Bitcoin Address',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: cryptoAddressController,
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            Spacer(),
            GestureDetector(
              child: Text(
                'Click to paste address',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(
              flex: 4,
            ),
            DefaultButton(
              bcolor: Color(0xFF001233),
              tcolor: Colors.white,
              text: 'Next',
              press: () {
                cryptoAddressTemp = cryptoAddressController.text;
                //grab rate from API
                buyRateTemp = buyRate;
                print(cryptoAddressController.text);
                Navigator.pushNamed(context, '/enteramount');
              },
            )
          ],
        ),
      ),
    );
  }
}
