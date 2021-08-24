import 'package:flutter/material.dart';
// import 'package:simplecoins_0/enum/constants.dart';
// import 'package:intl/intl.dart';
import 'package:simplecoins_0/modals/listview-all.dart';
import 'package:simplecoins_0/modals/listview-buy.dart';
import 'package:simplecoins_0/modals/listview-sell.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions>
    with SingleTickerProviderStateMixin {
  // final testvar = 70.0;
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
              fontSize: getProportionateScreenWidth(17.0)),
        ),
        //close button
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/home'));
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: getProportionateScreenHeight(20),
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              child: Container(
                width: getProportionateScreenWidth(335.0),
                height: getProportionateScreenHeight(58.0),
                decoration: BoxDecoration(
                    color: Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TabBar(
                  controller: _tabController,
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
                      '             All             ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(14)),
                    )),
                    Tab(
                        child: Text(
                      '             Buy             ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(14)),
                    )),
                    Tab(
                        child: Text(
                      '             Sell             ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(14)),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
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
