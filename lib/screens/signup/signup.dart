import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/helpers/assistant_methods.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _pController = new TextEditingController();
  TextEditingController _cpController = new TextEditingController();
  bool _isChecked = false;
  bool _isHidden = true;
  bool _isactive = false;
  bool _passwordEmpty = true;

  void _togglePass() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void assertPassEmpty() {
    setState(() {
      if (_emailController.text.isNotEmpty) {
        _passwordEmpty = false;
      } else {
        _passwordEmpty = true;
      }
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _nameController.dispose();
    _emailController.dispose();
    _pController.dispose();
    _cpController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    _emailController.addListener(assertPassEmpty);
    _nameController.addListener(assertPassEmpty);
    _cpController.addListener(assertPassEmpty);
    _pController.addListener(assertPassEmpty);
  }

  @override
  Widget build(BuildContext context) {
    _emailController.text.isNotEmpty &&
            _nameController.text.isNotEmpty &&
            _cpController.text.isNotEmpty &&
            _pController.text.isNotEmpty
        ? _isactive = true
        : _isactive = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image.asset(
          'assets/Splashscreen/SimplecoinsLogo.png',
          width: getProportionateScreenWidth(143.0),
        ),
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
          padding: EdgeInsets.all(getProportionateScreenWidth(23.0)),
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(14.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create an account',
                      style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: getProportionateScreenWidth(24),
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
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
                TextField(
                  controller: _nameController,
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'Full Name',
                      contentPadding: EdgeInsets.fromLTRB(
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25),
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
                TextField(
                  controller: _emailController,
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.fromLTRB(
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25),
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
                TextFormField(
                  controller: _pController,
                  // onSaved: (val) => _password = val,
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
                      contentPadding: EdgeInsets.fromLTRB(
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25),
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
                TextFormField(
                  controller: _cpController,
                  // onSaved: (val) => _password = val,
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
                      contentPadding: EdgeInsets.fromLTRB(
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25),
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
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
                          fontSize: getProportionateScreenWidth(12.0),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF757575),
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'I certify that I am '),
                          TextSpan(
                              text: '18 years of age or older, ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(12.0))),
                          TextSpan(text: 'and'),
                          TextSpan(text: '\nagree to the '),
                          TextSpan(
                              text: 'User Agreement',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Manrope',
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(12.0))),
                          TextSpan(text: ' and '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Manrope',
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(12.0))),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
                DefaultButton(
                  text: 'Sign Up',
                  isActive: _isactive && _isChecked,
                  press: () {
                    Navigator.popAndPushNamed(context, '/home');
                    signUp(
                        context, _nameController.text, _emailController.text);
                    isFirstTime();
                  },
                ),
                SizedBox(
                  height: getProportionateScreenHeight(36.0),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/signin');
                  },
                  child: Text(
                    "I already have an account",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
