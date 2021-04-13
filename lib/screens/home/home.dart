import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/cryptocard.dart';
import 'package:simplecoins_0/enum/constants.dart';

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
          padding: EdgeInsets.only(left: 21.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'GOOD EVENING',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xFF808080)),
              ),
              Text(
                'Andy Andy Kwesi',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Image.asset('assets/Homescreen/Ellipse 14.png'),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Buy Crypto. Sell for Cash',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            Text(
              'Easily buy and sell Crypto from us and pay\nwith Mobile money',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            Padding(
              padding: EdgeInsets.only(top: 31.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                child: Container(
                  // color: Colors.red
                  width: 335.0,
                  height: 58.0,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA),
                      // border: Border.all(
                      //   color: Colors.red[500],
                      // ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicator: BoxDecoration(color: Colors.black),
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600),
                    unselectedLabelColor: Color(0xFFA5AEBC),
                    unselectedLabelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400),
                    tabs: [
                      Tab(
                          child: Text(
                        '             Buy Crypto             ',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )),
                      Tab(
                          child: Text(
                        '             Sell Crypto             ',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              height: 250.0,
              width: 335.0,
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
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/USDT.png',
                          cryptoName: 'USDT',
                          press: () {
                            cryptoType = 'USDT';
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Ripple.png',
                          cryptoName: 'Ripple',
                          press: () {
                            cryptoType = 'Ripple';
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
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/USDT.png',
                          cryptoName: 'USDT',
                          press: () {
                            cryptoType = 'USDT';
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Ripple.png',
                          cryptoName: 'Ripple',
                          press: () {
                            cryptoType = 'Ripple';
                            Navigator.pushNamed(context, '/enterwalletaddress');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            SizedBox(
              height: 100.0,
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
                        press: () {},
                        bcolor: Colors.black,
                        tcolor: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    top: 0.0,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text(
                          '${transactions.length}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

