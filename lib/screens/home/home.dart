import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';

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
          padding: EdgeInsets.only(left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Good Evening',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Andy Andy Kwesi',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Image.asset('assets/Homescreen/Ellipse 14.png'),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Buy Crypto. Sell for Cash'),
            Text(
                'Easily buy and sell Crypto from us and pay\nwith Mobile money'),
            Padding(
              padding: EdgeInsets.all(8.0),
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
                      Tab(child: Text('             Buy Crypto             ')),
                      Tab(child: Text('             Sell Crypto             ')),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
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
                          press: () {},
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/USDT.png',
                          cryptoName: 'Bitcoin',
                          press: () {},
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Ripple.png',
                          cryptoName: 'Bitcoin',
                          press: () {},
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
                          press: () {},
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/USDT.png',
                          cryptoName: 'Bitcoin',
                          press: () {},
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CryptoCard(
                          imgPath: 'assets/Homescreen/Ripple.png',
                          cryptoName: 'Bitcoin',
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: DefaultButton(
                    text: 'View my transactions',
                    press: () {},
                  ),
                ),
                Container(
                  width: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({Key key, this.cryptoName, this.imgPath, this.press})
      : super(key: key);
  final String imgPath;
  final String cryptoName;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.0,
      width: 335.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey)),
        onPressed: press,
        child: (Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imgPath,
              width: 52,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(cryptoName),
                Text('\$37,000.00'),
              ],
            ),
            Spacer(),
            Icon(Icons.chevron_right)
          ],
        )),
      ),
    );
  }
}
