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
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 55.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
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
                    'Sign In with your details to \ncontinue',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xFF787879),
                        fontFamily: "Manrope",
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 60.0,
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
              SizedBox(
                height: 20.0,
              ),
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
              SizedBox(
                height: 40.0,
              ),
              DefaultButton(
                text: 'Sign In',
                press: () {},
                bcolor: Colors.black,
                tcolor: Colors.white,
              ),
              SizedBox(
                height: 26.0,
              ),
              Text('OR'),
              SizedBox(
                height: 37.0,
              ),
              GoogleButton(),
              SizedBox(
                height: 56.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "I don't have an account",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
