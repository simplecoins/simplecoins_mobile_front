import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/googlebutton.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: pageData.length,
                itemBuilder: (context, index) => PageContent(
                      text: pageData[index]['text'],
                      image: pageData[index]["image"],
                      text1: pageData[index]['subtitle'],
                      image1: pageData[index]['emoji'],
                    )),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      getProportionateScreenWidth(20),
                      getProportionateScreenHeight(5),
                      getProportionateScreenWidth(20),
                      getProportionateScreenHeight(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      pageData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/signin');
                    },
                    child: GoogleButton()),
                Spacer(),
                DefaultButton(
                  text: 'Sign Me Up',
                  press: () {
                    Navigator.popAndPushNamed(context, '/signup');
                  },
                  bcolor: Colors.black,
                  tcolor: Colors.white,
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: getProportionateScreenWidth(5)),
      height: getProportionateScreenHeight(4),
      width: getProportionateScreenWidth(23),
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.black : Color(0xFFE3E9F0),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

class PageContent extends StatelessWidget {
  const PageContent({
    Key key,
    this.text,
    this.image,
    this.text1,
    this.image1,
  }) : super(key: key);
  final String text, image, text1, image1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          image,
          fit: BoxFit.fitWidth,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(20),
              getProportionateScreenHeight(5),
              getProportionateScreenWidth(20),
              getProportionateScreenHeight(5)),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                    fontSize: getProportionateScreenWidth(30),
                    color: Colors.black),
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
              Image.asset(image1)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(20),
              getProportionateScreenHeight(5),
              getProportionateScreenWidth(20),
              getProportionateScreenHeight(5)),
          child: Text(
            text1,
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w500,
                fontSize: getProportionateScreenWidth(18),
                color: Colors.black),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
