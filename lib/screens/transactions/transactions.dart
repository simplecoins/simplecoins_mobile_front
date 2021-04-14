import 'package:flutter/material.dart';
// import 'package:simplecoins_0/enum/constants.dart';
// import 'package:intl/intl.dart';
import 'package:simplecoins_0/modals/listview-all.dart';
import 'package:simplecoins_0/modals/listview-buy.dart';
import 'package:simplecoins_0/modals/listview-sell.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions>
    with SingleTickerProviderStateMixin {
  final testvar = 70.0;
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
            onPressed: () {
              Navigator.pop(context);
            },
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
                width: 335.0,
                height: 58.0,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F7FA),
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
              height: 630,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Tab(child: buildListView()),
                  Tab(
                    child: buildListViewBuy(),
                  ),
                  Tab(
                    child: buildListViewSell(),
                  )
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
    this.priceColor,
    this.statusColor,
  }) : super(key: key);
  final Function press;
  final String imgPath;
  final String transType;
  final usdPrice;
  final ghPrice;
  final status;
  final Color priceColor;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
                          color: statusColor),
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
                          color: priceColor),
                    ),
                    Text(
                      ghPrice,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF757575)),
                    )
                  ],
                )
              ],
            )),
          ),
        ),
        SizedBox(
          height: 8.0,
        )
      ],
    );
  }
}

