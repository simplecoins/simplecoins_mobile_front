import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/alertdiag.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/newnumber.dart';
import 'package:simplecoins_0/components/savednumber.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class ChooseReceivingNumber extends StatefulWidget {
  @override
  _ChooseReceivingNumberState createState() => _ChooseReceivingNumberState();
}

class _ChooseReceivingNumberState extends State<ChooseReceivingNumber>
    with SingleTickerProviderStateMixin {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TabController? _tabController;
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
          'Receiving Method',
          style: TextStyle(color: Colors.black),
        ),
        //back button
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        //close button
        actions: [
          IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20.0),
              right: getProportionateScreenWidth(20.0),
              top: getProportionateScreenHeight(20.0)),
          child: Expanded(
            child: ListView(
              //delete cross axis alignment and position other text
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'You are selling ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                    Text(
                      '\$$priceTemp BTC',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20)),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //CHANGE TO AMOUNT ENTERED IN CHOOSE AMOUNT PAGE. GLOBALIZE AMOUNT

                      '(GHS ${priceTemp! * buyRate})',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: getProportionateScreenWidth(20)),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(31.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Network to receive your funds',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(14)),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8.0),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  child: Container(
                    // color: Colors.red
                    width: getProportionateScreenWidth(335.0),
                    height: getProportionateScreenWidth(58.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F7FA),
                        // border: Border.all(
                        //   color: Colors.red[500],
                        // ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(color: Colors.black),
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.white,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600),
                      unselectedLabelColor: Color(0xFFA5AEBC),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 14,
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
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    width: 335.0,
                    height: 435.0,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Tab(
                          child: ListView(
                            children: [
                              NewNumber(
                                text: 'MTN Mobile Money',
                                imgPath: 'assets/MoMo Networks/MTN.png',
                                nameController: _nameController,
                                numberController: _numberController,
                              ),
                              NewNumber(
                                text: 'Vodafone Cash',
                                imgPath: 'assets/MoMo Networks/Vodafone.png',
                                nameController: _nameController,
                                numberController: _numberController,
                              ),
                              NewNumber(
                                text: 'AirtelTigo Money',
                                imgPath: 'assets/MoMo Networks/AirtelTigo.png',
                                nameController: _nameController,
                                numberController: _numberController,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(15.0),
                                )
                            ],
                          ),
                        ),
                        Tab(
                          child: ListView(
                            children: [
                              SavedNumber(
                                networkText: 'Desmond Sofua',
                                numberText: '0503456748',
                                imgPath: 'assets/MoMo Networks/MTN.png',
                                press: () {
                                  paymentToNameTemp = 'Desmond Sofua';
                                  paymentToTemp = 0503456748;
                                  Navigator.pushNamed(context, '/sellsummary');
                                },
                              ),
                              SavedNumber(
                                networkText: 'Andy Apenteng',
                                numberText: '0503091855',
                                imgPath: 'assets/MoMo Networks/Vodafone.png',
                                press: () {
                                  paymentToNameTemp = 'Andy Apenteng';
                                  paymentToTemp = 0503091855;
                                  Navigator.pushNamed(context, '/sellsummary');
                                },
                              ),
                              SavedNumber(
                                networkText: 'Godfrey Ebhohimen',
                                numberText: '0203094567',
                                imgPath: 'assets/MoMo Networks/AirtelTigo.png',
                                press: () {
                                  paymentToNameTemp = 'Godfrey Ebhohimen';
                                  paymentToTemp = 0203094567;
                                  Navigator.pushNamed(context, '/sellsummary');
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                DefaultButton(
                  bcolor: Color(0xFF001233),
                  tcolor: Colors.white,
                  text: 'Next',
                  press: () {
                      // print(savednumbers.length);
                    // paymentFromNameTemp = accName.text;
                    // paymentFromTemp = int.parse(accNumber.text);
                    // print(accName.text);
                    // print(accNumber.text);
                    Navigator.pushNamed(context, '/sellsummary');
                  },
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
