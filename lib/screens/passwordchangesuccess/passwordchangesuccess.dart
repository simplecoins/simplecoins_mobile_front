import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';

class PasswordChangeSuccess extends StatefulWidget {
  @override
  _PasswordChangeSuccessState createState() => _PasswordChangeSuccessState();
}

class _PasswordChangeSuccessState extends State<PasswordChangeSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Change Password',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 17.0),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset(
              'assets/Success Gif/giphy.gif',
              height: 74.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Awesome!!\nYou have successfully changed\nyour password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            DefaultButton(
              text: 'Back to Profile',
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
