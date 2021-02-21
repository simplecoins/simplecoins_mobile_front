import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/googlebutton.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isHidden = true;
  String _password;

  void _toggle() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

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
                  'Welcome',
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 24,
                    fontWeight: FontWeight.w800
                  ),
                  ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In with your details to \ncontinue',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF787879),
                    fontFamily: "Manrope",
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                  ),
              ],
            ),
            Spacer(
              flex: 4,
            ),
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
                    onTap: _toggle,
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
            Spacer(
              flex: 3,
            ),
            DefaultButton(
              text: 'Sign In',
            ),
            Spacer(
              flex: 2,
            ),
            Text('OR'),
            Spacer(
              flex: 2,
            ),
            GoogleButton(),
            Spacer(
              flex: 4,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "I don't have an account",
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
