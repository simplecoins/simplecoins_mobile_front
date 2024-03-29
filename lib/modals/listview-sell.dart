import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/screens/transactionhistory_selected/thistory_selected.dart';

ListView buildListViewSell() {
  return ListView.builder(
    //number of cards
    itemCount: transactions.length,
    itemBuilder: (context, index) {
      Transaction transaction = transactions[index];
      return simpleCoinsCard(transaction, context);
    },
  );
}

Visibility simpleCoinsCard(Transaction transaction, BuildContext context) {
  return Visibility(
    visible: !transaction.isBuying!,
    child: Column(
      children: [
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 75.0,
          width: 335.0,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color(0xFFF2F2F2))),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => THistorySelected(transaction: transaction)));
            },
            child: (Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/Homescreen/${transaction.currency}.png',
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
                      transaction.status == 'AWAITING PAYMENT' &&
                              transaction.isBuying == true
                          ? 'Buying ${transaction.currency}'
                          : (transaction.status == 'PROCESSING' &&
                                  transaction.isBuying == true
                              ? 'Buying ${transaction.currency}'
                              : (transaction.status == 'PROCESSED' &&
                                      transaction.isBuying == true
                                  ? 'Bought ${transaction.currency}'
                                  : (transaction.status == 'CANCELLED' &&
                                          transaction.isBuying == true
                                      ? 'Bought ${transaction.currency}'
                                      : (transaction.status ==
                                                  'AWAITING PAYMENT' &&
                                              transaction.isBuying == false
                                          ? 'Selling ${transaction.currency}'
                                          : (transaction.status ==
                                                      'PROCESSING' &&
                                                  transaction.isBuying == false
                                              ? 'Selling ${transaction.currency}'
                                              : (transaction.status ==
                                                          'PROCESSED' &&
                                                      transaction.isBuying ==
                                                          false
                                                  ? 'Sold ${transaction.currency}'
                                                  : 'Sold ${transaction.currency}')))))),
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    Text(
                      transaction.status!,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: transaction.status == 'AWAITING PAYMENT'
                              ? Color(0xFF4F49C1)
                              : (transaction.status == 'PROCESSING'
                                  ? Color(0xFFFFB121)
                                  : (transaction.status == 'PROCESSED'
                                      ? Color(0xFF40A187)
                                      : Color(0xFFE56565)))),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${transaction.price.toString()}',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: transaction.isBuying!
                              ? Color(0xFF40A187)
                              : Color(0xFFE56565)),
                    ),
                    Text(
                      'GHS ' + (transaction.price! * 5.90).toString(),
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
      ],
    ),
  );
}
