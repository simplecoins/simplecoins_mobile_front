import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //Splash duration
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, '/onboarding');
    });
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(120.0)),
            child: SvgPicture.asset(
                'assets/Splashscreen/simplecoinslogonew.svg',
                height: 83.0,
              )
          ),
          Spacer(),
          Text(
            'Simplecoins.africa',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: getProportionateScreenWidth(12),
              color: Colors.black
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(25.0),
          )
        ],
      ),
    );
  }
}