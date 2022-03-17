import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/cryptocard.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(21)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'GOOD EVENING',
                  style: Theme.of(context).textTheme.headline3
              ),
              Text(
                'Andy Andy Kwesi',
                  style: Theme.of(context).textTheme.headline2
              )
            ],
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/userprofile');
            },
            child: Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(20)),
              child: Image.asset('assets/Homescreen/Ellipse 14.png'),
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(32)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(70.0),
            ),
            Text(
              'Buy Crypto. Sell for Cash',
                style: Theme.of(context).textTheme.subtitle1
            ),
            Text(
              'Easily buy and sell Crypto from us and pay\nwith Mobile money',
                style: Theme.of(context).textTheme.bodyText1
            ),
            Padding(
              padding: EdgeInsets.only(top: getProportionateScreenHeight(31.0)),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                child: Container(
                  // color: Colors.red
                  width: getProportionateScreenWidth(335.0),
                  height: getProportionateScreenHeight(58.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA),
                      // border: Border.all(
                      //   color: Colors.red[500],
                      // ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TabBar(
                    controller: _tabController,
                    // isScrollable: true,
                    indicator: BoxDecoration(color: Colors.black),
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600),
                    unselectedLabelColor: Color(0xFFA5AEBC),
                    unselectedLabelStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        color: Colors.red,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400),
                    tabs: [
                      Tab(
                          child: Text(
                        'Buy Crypto',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: getProportionateScreenWidth(14)),
                      )),
                      Tab(
                          child: Text(
                        'Sell Crypto',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: getProportionateScreenWidth(14)),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
            Container(
              height: getProportionateScreenHeight(250),
              width: getProportionateScreenWidth(335.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Tab(
                    child: ListView(
                      children: [
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Bitcoin.png',
                          cryptoName: 'Bitcoin',
                          press: () {
                            cryptoType = 'Bitcoin';
                            currencyTemp = currencies[0];
                            isBuyingTemp = true;
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10.0),
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/USDT.png',
                          cryptoName: 'USDT',
                          press: () {
                            cryptoType = 'USDT';
                            currencyTemp = currencies[1];
                            isBuyingTemp = true;
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10.0),
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Ripple.png',
                          cryptoName: 'Ripple',
                          press: () {
                            cryptoType = 'Ripple';
                            currencyTemp = currencies[2];
                            isBuyingTemp = true;
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Bitcoin.png',
                          cryptoName: 'Bitcoin',
                          press: () {
                            cryptoType = 'Bitcoin';
                            currencyTemp = currencies[0];
                            isBuyingTemp = false;
                            Navigator.pushNamed(context, '/entersellamount');
                          },
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10.0),
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/USDT.png',
                          cryptoName: 'USDT',
                          press: () {
                            cryptoType = 'USDT';
                            currencyTemp = currencies[1];
                            isBuyingTemp = false;
                            Navigator.pushNamed(context, '/entersellamount');
                          },
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10.0),
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Ripple.png',
                          cryptoName: 'Ripple',
                          press: () {
                            cryptoType = 'Ripple';
                            currencyTemp = currencies[2];
                            isBuyingTemp = false;
                            Navigator.pushNamed(context, '/entersellamount');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(90.0),
            ),
            SizedBox(
              height: getProportionateScreenHeight(90.0),
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    left: 0.0,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: DefaultButton(
                        text: 'View my transactions',
                        press: () {
                          Navigator.pushNamed(context, '/transactions');
                        },
                        bcolor: Color(0xFF001233),
                        tcolor: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0.0,
                      top: 0.0,
                      child: Container(
                        height: getProportionateScreenHeight(20),
                        width: getProportionateScreenWidth(20),
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            '${transactions.length}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: getProportionateScreenWidth(12.0),
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
