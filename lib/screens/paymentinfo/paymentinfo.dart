import 'package:flutter/material.dart';
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
            Text(
              'Awesome!!',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w400,
                fontSize: 18
              ),
            ),
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
                  TextSpan(text: 'You just placed an order to Buy '),
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
              height: 90.0,
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

// set up the buttons
Widget discardButton = FlatButton(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0)
    )
  ),
  padding: EdgeInsets.only(left: 36.0, right: 36.0, top: 16.0, bottom: 16.0),
  color: Colors.white,
  child: Text(
    "Yes, Discard it",
    style: TextStyle(
      color: Color(0xFFFC8181),
      fontFamily: 'Manrope',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  ),
  onPressed: () {},
);
Widget cancelButton = FlatButton(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0)
    )
  ),
  padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 16.0, bottom: 16.0),
  color: Color(0xFF2F7CF6),
  child: Text(
    "Cancel",
    style: TextStyle(
      color: Colors.white,
      fontFamily: 'Manrope',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  ),
  onPressed: () {},
);
// Widget launchButton = FlatButton(
//   child: Text("Launch missile"),
//   onPressed: () {},
// );

// set up the AlertDialog
AlertDialog alert = AlertDialog(
  insetPadding: EdgeInsets.all(20.0),
  backgroundColor: Colors.white,
  contentPadding: EdgeInsets.only(top: 60.0, bottom: 46.0),
  actionsPadding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 38.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0)
    )
  ),
  content: Text(
      "Do you wish to discard\nthis order?",
      style: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xFF243656)
      ),
      textAlign: TextAlign.center,
    ),
  actions: [
    discardButton,
    cancelButton,
  ],
);

