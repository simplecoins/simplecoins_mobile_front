import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;
  bool _isHidden = true;
  String _password;

  void _togglePass() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  // void _toggleTnA() {
  //   setState(() {
  //     _isChecked = !_isChecked;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image.asset(
          'assets/Splashscreen/SimplecoinsLogo.png',
          width: 143.0,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(23.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(
              flex: 3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an account',
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up with your details to \ncontinue',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF787879),
                      fontFamily: "Manrope",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Spacer(
              flex: 4,
            ),
            TextField(
              autofocus: false,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'Full Name',
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            Spacer(),
            TextField(
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            Spacer(),
            TextFormField(
              onSaved: (val) => _password = val,
              autofocus: false,
              keyboardType: TextInputType.visiblePassword,
              obscureText: _isHidden,
              decoration: InputDecoration(
                  focusColor: Colors.black,
                  suffixIcon: GestureDetector(
                    onTap: _togglePass,
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      //color: Colors.black,
                    ),
                  ),
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            Spacer(),
            TextFormField(
              onSaved: (val) => _password = val,
              autofocus: false,
              keyboardType: TextInputType.visiblePassword,
              obscureText: _isHidden,
              decoration: InputDecoration(
                  focusColor: Colors.black,
                  suffixIcon: GestureDetector(
                    onTap: _togglePass,
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      //color: Colors.black,
                    ),
                  ),
                  hintText: 'Confirm Password',
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Checkbox(
                  activeColor: Colors.black,
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                ),
                Text(
                  'I certify that I am 18 years of age or older, and\nagree to the User Agreement and Privacy Policy.'
                )
              ],
            ),
            Spacer(
              flex: 3,
            ),
            DefaultButton(
              text: 'Sign Up',
            ),
            Spacer(
              flex: 2,
            ),
            Spacer(
              flex: 4,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "I already have an account",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
