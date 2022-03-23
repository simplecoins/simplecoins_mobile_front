import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/googlebutton.dart';
import 'package:simplecoins_0/helpers/assistant_methods.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isHidden = true;
  bool _isactive = false;
  bool _emailEmpty = true;
  bool _passwordEmpty = true;

  void _toggle() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void assertEmailEmpty() {
    setState(() {
      if (_emailController.text.isNotEmpty) {
        _emailEmpty = false;
      } else {
        _emailEmpty = true;
      }
    });
  }

  void assertPassEmpty() {
    setState(() {
      if (_passwordController.text.isNotEmpty) {
        _passwordEmpty = false;
      } else {
        _passwordEmpty = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    _emailController.addListener(assertEmailEmpty);
    _passwordController.addListener(assertPassEmpty);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty
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
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(23.0)),
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
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
                      'Sign In with your details to \ncontinue',
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
                  height: getProportionateScreenHeight(60.0),
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
                  controller: _passwordController,
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
                      contentPadding: EdgeInsets.fromLTRB(
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25),
                          getProportionateScreenWidth(20),
                          getProportionateScreenHeight(25)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),
                DefaultButton(
                  text: 'Sign In',
                  isActive: _isactive,
                  press: () {
                    // _isActive
                    //     ? Navigator.pushReplacementNamed(context, '/home')
                    //     : print('signin; invalid navigation');
                    // signIn(context, _emailController.text,
                    //     _passwordController.text);
                    // isFirstTime();
                    Navigator.pushReplacementNamed(context, '/home');
                    signIn(context, _emailController.text,
                        _passwordController.text);
                    isFirstTime();
                  },
                ),
                SizedBox(
                  height: getProportionateScreenHeight(26.0),
                ),
                Text('OR'),
                SizedBox(
                  height: getProportionateScreenHeight(37.0),
                ),
                GoogleButton(),
                SizedBox(
                  height: getProportionateScreenHeight(56.0),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  child: Text(
                    "I don't have an account",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w400),
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
