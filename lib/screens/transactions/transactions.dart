import 'package:flutter/material.dart';
import 'package:simplecoins_0/enum/constants.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Transactions',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 17.0),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            ClipRRect(
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
                      '             All             ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                    Tab(
                        child: Text(
                      '             Buy             ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                    Tab(
                        child: Text(
                      '             Sell             ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 600,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Tab(
                      child: ListView(
                    children: [
                      TransactionCard(
                        press: () {},
                        imgPath: 'assets/Homescreen/Bitcoin.png',
                        transType: 'Buying Bitcoin',
                        status: 'hbdshbfs',
                        usdPrice: '\$250',
                        ghPrice: 'GHS 2457.00',
                      ),
                    ],
                  )
                      //   ListView.builder(
                      //   itemCount: transactions.length,
                      //   itemBuilder: (context, index) {
                      //     return HistoryTile(
                      //       pickup: transactions[index]['pickup'],
                      //       destination: transactions[index]['destination'],
                      //       date: (transactions[index]['date']),
                      //       // transactions[index]['date']
                      //     );
                      //   },
                      // )
                      ),
                  Tab(
                      child: ListView(
                    children: [
                      FlatButton(
                        onPressed: () {
                          print(transactions[0]['currency']);
                        },
                        child: Text('test'),
                      ),
                    ],
                  )),
                  Tab(
                      child: ListView(
                    children: [Text('Tab')],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key key,
    this.transType,
    this.imgPath,
    this.press,
    this.usdPrice,
    this.ghPrice,
    this.status,
  }) : super(key: key);
  final Function press;
  final String imgPath;
  final String transType;
  final usdPrice;
  final ghPrice;
  final status;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.0,
      width: 335.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Color(0xFFF2F2F2))),
        onPressed: press,
        child: (Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imgPath,
              width: 52,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  transType,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
                Text(
                  status,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Color(0xFF4F49C1)),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  usdPrice,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xFF40A187)),
                ),
                Text(
                  ghPrice,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
