import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simplecoins_0/components/button.dart';
import 'package:simplecoins_0/components/copynumber.dart';
import 'package:simplecoins_0/components/savednumber.dart';
import 'package:simplecoins_0/enum/constants.dart';

class THistorySelected extends StatefulWidget {
  final Transaction transaction;
  THistorySelected({@required this.transaction});

  @override
  _THistorySelectedState createState() => _THistorySelectedState();
}

class _THistorySelectedState extends State<THistorySelected> {
  
  @override
  Widget build(BuildContext context) {
    bool processedVisibility = widget.transaction.isBuying;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Order #34553',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 17.0),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AWAITING PAYMENT',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4F49C1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'YOU ARE BUYING',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '\$ ${widget.transaction.price}',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'GHS ${widget.transaction.price * buyRate}',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1857BB)),
                        ),
                        Text(
                          '${widget.transaction.price * btcRate} BTC',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Created on',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${DateFormat("EEE, MMM d, y").format(DateTime.now())}',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy Rate',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.transaction.buyRate} GHS',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Miner fee',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$${widget.transaction.minersFee}',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BTC address',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.transaction.cryptoAddress}',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Track transaction on the blockchain',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF2F7CF6),
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 76.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //change 'you are paying from' and 'you paid from' in set header text
                    Text(
                      widget.transaction.status == 'PROCESSED'
                          ? 'You paid from'
                          : 'You are paying from',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                SavedNumber(
                  imgPath: 'assets/MoMo Networks/MTN.png',
                  numberText: '0503456748',
                  networkText: 'Desmond Sofua',
                  press: () {},
                ),
                
                SizedBox(
                  height: 10.0,
                ),
                Visibility(
                  visible: widget.transaction.status == 'PROCESSED' ? false : true,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              // Note: Styles for TextSpans must be explicitly defined.
                              // Child text spans will inherit styles from parent
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Send ${widget.transaction.price * buyRate} GHS ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w600)),
                                TextSpan(text: 'to'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      CopyNumber(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Emojis/image 13.png',
                            height: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('Use Refrence: Simplecoins',
                              style: TextStyle(
                                  color: Color(0xFF3B32A7),
                                  fontSize: 12,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 110.0,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 35.0,
            left: 32.0,
            right: 32.0,
            child: DefaultButton(
              text: 'Done',
              press: () {
                Navigator.pop(context);
              },
              bcolor: Color(0xFF001233),
              tcolor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
