import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class EnterWalletAddress extends StatefulWidget {
  @override
  _EnterWalletAddressState createState() => _EnterWalletAddressState();
}

class _EnterWalletAddressState extends State<EnterWalletAddress> {
  TextEditingController _cryptoAddressController = TextEditingController();

  bool _emailEmpty = true;
  bool _isactive = false;

  void assertEmailEmpty() {
    setState(() {
      if (_cryptoAddressController.text.isNotEmpty) {
        _emailEmpty = false;
      } else {
        _emailEmpty = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    _cryptoAddressController.addListener(assertEmailEmpty);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _cryptoAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _cryptoAddressController.text.isNotEmpty
        ? _isactive = true
        : _isactive = false;
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
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/Homescreen/$cryptoType.png',
                width: getProportionateScreenWidth(52.0),
              ),
              Spacer(
                flex: 4,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Your Bitcoin Address',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(10.0),
              ),
              TextField(
                controller: _cryptoAddressController,
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(
                        getProportionateScreenWidth(20),
                        getProportionateScreenHeight(25),
                        getProportionateScreenWidth(20),
                        getProportionateScreenHeight(25)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              Spacer(),
              GestureDetector(
                onTap: () async {
                  // paste from clipboard
                  ClipboardData data = await (Clipboard.getData('text/plain')
                      as Future<ClipboardData>);
                  _cryptoAddressController.text = data.text!;
                },
                child: Text(
                  'Click to paste address',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Spacer(
                flex: 8,
              ),
              DefaultButton(
                text: 'Next',
                isActive: _isactive,
                press: () {
                  cryptoAddressTemp = _cryptoAddressController.text;
                  //grab rate from API
                  buyRateTemp = buyRate;
                  print(_cryptoAddressController.text);
                  Navigator.pushNamed(context, '/enteramount');
                },
              ),
              Spacer(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
