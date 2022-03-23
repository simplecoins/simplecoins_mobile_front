import 'package:flutter/material.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';
// import 'package:flutter/scheduler.dart';

showAlertDialog(BuildContext context) {
  // 'Yes, Discard It' Button
  Widget discardButton = FlatButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    padding: EdgeInsets.only(
        left: getProportionateScreenWidth(34.0),
        right: getProportionateScreenWidth(34.0),
        top: getProportionateScreenHeight(16.0),
        bottom: getProportionateScreenHeight(16.0)),
    color: Colors.white,
    child: Text(
      "Yes, Discard it",
      style: TextStyle(
        color: Color(0xFFFC8181),
        fontFamily: 'Manrope',
        fontSize: getProportionateScreenWidth(16),
        fontWeight: FontWeight.w400,
      ),
    ),
    onPressed: () {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        Navigator.popUntil(context, ModalRoute.withName('/home'));
      });
    },
  );

//'Cancel button'
  Widget cancelButton = FlatButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    padding: EdgeInsets.only(
        left: getProportionateScreenWidth(36.0),
        right: getProportionateScreenWidth(36.0),
        top: getProportionateScreenHeight(16.0),
        bottom: getProportionateScreenHeight(16.0)),
    color: Color(0xFF2F7CF6),
    child: Text(
      "Cancel",
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Manrope',
        fontSize: getProportionateScreenWidth(16),
        fontWeight: FontWeight.w400,
      ),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

// set up the AlertDialog
  AlertDialog alert = AlertDialog(
    insetPadding: EdgeInsets.all(getProportionateScreenWidth(20.0)),
    backgroundColor: Colors.white,
    contentPadding: EdgeInsets.only(
        top: getProportionateScreenHeight(60.0),
        bottom: getProportionateScreenHeight(46.0)),
    actionsPadding: EdgeInsets.only(
        left: getProportionateScreenWidth(19.0),
        right: getProportionateScreenWidth(19.0),
        bottom: getProportionateScreenHeight(38.0)),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    content: Text(
      "Do you wish to discard\nthis order?",
      style: TextStyle(
          fontFamily: 'Manrope',
          fontSize: getProportionateScreenWidth(20),
          fontWeight: FontWeight.w400,
          color: Color(0xFF243656)),
      textAlign: TextAlign.center,
    ),
    actions: [
      discardButton,
      cancelButton,
    ],
  );

  showDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return alert;
      });
}
