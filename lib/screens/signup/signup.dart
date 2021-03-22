import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _pController = new TextEditingController();
  TextEditingController _cpController = new TextEditingController();
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
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 34.0,
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
              SizedBox(
                height: 20.0,
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
              SizedBox(
                height: 20.0,
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
                controller: _pController,
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
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _cpController,
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
              SizedBox(
                height: 20.0,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF757575),
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'I certify that I am '),
                      TextSpan(
                          text: '18 years of age or older, ',
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                      TextSpan(text: 'and'),
                      TextSpan(text: '\nagree to the '),
                      TextSpan(
                          text: 'User Agreement',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Manrope',
                            color: Colors.black,
                            fontSize: 12
                          )
                          ),
                      TextSpan(text: ' and '),
                      TextSpan(
                      text: 'Privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Manrope',
                          color: Colors.black,
                          fontSize: 12
                        )
                      ),
                    ],
                  ),
                )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              DefaultButton(
                text: 'Sign Up',
                press: () {
                  _pController.text == _cpController.text
                      ? print('yes')
                      : print('no');
                },
                bcolor: _isChecked ? Colors.black : Color(0xFFF2F2F2),
                tcolor: _isChecked ? Colors.white : Color(0xFFAAABAE),
              ),
              SizedBox(
                height: 36.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "I already have an account",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
