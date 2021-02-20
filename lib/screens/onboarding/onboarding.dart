import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<Map<String, String>> pageDataSet1 = [
    {
      "image": "assets/Onboarding/ScribbleArt_01.png",
      "text": "Hello!",
    },
    {
      "image": "assets/Onboarding/ScribbleArt_02.png",
      "text": "Freedom",
          
    },
    {
      "image": "assets/Onboarding/ScribbleArt_03.png",
      "text": "Super Secure",
    },
  ];
    List<Map<String, String>> pageDataSet2 = [
    {
      "image": "assets/Onboarding/Wave.png",
      "text": "Simplecoins is a platform for making fast and simple crypto purchases using your Mobile Money",
    },
    {
      "image": "assets/Onboarding/stars.png",
      "text": "Enjoy the stress free experience we have to offer, along side the best crypto rates on the market.",
          
    },
    {
      "image": "assets/Onboarding/Shield.png",
      "text": "With simple but secure accounts and transactions you can trust",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: pageDataSet1.length,
                itemBuilder: (context, index) => PageContent(
                    text: pageDataSet1[index]['text'],
                    image: pageDataSet1[index]["image"],
                    text1: pageDataSet2[index]['text'],
                    image1: pageDataSet2[index]['image'],
                  )
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
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
        Spacer(
          flex: 4,
        ),
        Image.asset(
          image,
          fit: BoxFit.fitWidth,
        ),
        Spacer(),
        Row(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Colors.black
              ),
              ),
              Image.asset(image1)
          ],
        ),
        Text(
          text1,
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.black
          ),
          )
      ],
    );
  }
}