import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    //Splash duration
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/home');
    });
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(120.0),
            child: Image(
              image: AssetImage('assets/Splashscreen/SimplecoinsLogo.png'),
            ),
          ),
          Spacer(),
          Text(
            'Simplecoins.africa',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.black
            ),
          ),
          SizedBox(
            height: 25.0,
          )
        ],
      ),
    );
  }
}