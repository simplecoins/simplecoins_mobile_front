import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/numbercard.dart';

class ChoosePaymentNumber extends StatefulWidget {
  @override
  _ChoosePaymentNumberState createState() => _ChoosePaymentNumberState();
}

class _ChoosePaymentNumberState extends State<ChoosePaymentNumber>
    with SingleTickerProviderStateMixin {
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
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Payment Method',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [Text('You are buying '), Text('\$50 BTC')],
            ),
            Text(

                //CHANGE TO AMOUNT ENTERED IN CHOOSE AMOUNT PAGE. GLOBALIZE AMOUNT

                '(GHS 34.56)'),
            Text('Choose Payment network & Number'),
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
                        '             New Number             ',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )),
                      Tab(
                          child: Text(
                        '             Saved Number             ',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 335.0,
              height: 250.0,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Tab(
                    child: Text(
                      'nccg'
                    ),
                  ),
                  Tab(
                    child: Text(
                      'ggchg'
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
