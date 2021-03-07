import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
