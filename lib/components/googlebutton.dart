import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 311,
      child: FlatButton(
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.black)),
        //color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign In with Google',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Manrope'
                ),
            ),
            SizedBox(width: 10),
            Image.asset(
              'assets/Onboarding/bx_bxl-google.png',
              height: 17.87,)
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
