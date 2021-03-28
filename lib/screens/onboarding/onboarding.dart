import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/googlebutton.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  List<Map<String, String>> pageData = [
    {
      "image": "assets/Onboarding/ScribbleArt_01.png",
      "text": "Hello!",
      "emoji": "assets/Onboarding/Wave.png",
      "subtitle":
          "Simplecoins is a platform for making fast and simple crypto purchases using your Mobile Money",
    },
    {
      "image": "assets/Onboarding/ScribbleArt_02.png",
      "text": "Freedom",
      "emoji": "assets/Onboarding/stars.png",
      "subtitle":
          "Enjoy the stress free experience we have to offer, along side the best crypto rates on the market.",
    },
    {
      "image": "assets/Onboarding/ScribbleArt_03.png",
      "text": "Super Secure",
      "emoji": "assets/Onboarding/Shield.png",
      "subtitle": "With simple but secure accounts and transactions you can trust"
    },
  ];
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
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                GoogleButton(),
                Spacer(),
                DefaultButton(
                  text: 'Sign Me Up',
                  press: () {},
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
      margin: EdgeInsets.only(right: 5),
      height: 4,
      width: 23,
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
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.black),
              ),
              SizedBox(width: 10),
              Image.asset(image1)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Text(
            text1,
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
