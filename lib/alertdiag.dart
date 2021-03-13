import 'package:flutter/material.dart';
// 'Yes, Discard It' Button
Widget discardButton = FlatButton(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0)
    )
  ),
  padding: EdgeInsets.only(left: 36.0, right: 36.0, top: 16.0, bottom: 16.0),
  color: Colors.white,
  child: Text(
    "Yes, Discard it",
    style: TextStyle(
      color: Color(0xFFFC8181),
      fontFamily: 'Manrope',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  ),
  onPressed: () {},
);

//'Cancel button'
Widget cancelButton = FlatButton(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0)
    )
  ),
  padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 16.0, bottom: 16.0),
  color: Color(0xFF2F7CF6),
  child: Text(
    "Cancel",
    style: TextStyle(
      color: Colors.white,
      fontFamily: 'Manrope',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  ),
  onPressed: () {},
);


// set up the AlertDialog
AlertDialog alert = AlertDialog(
  insetPadding: EdgeInsets.all(20.0),
  backgroundColor: Colors.white,
  contentPadding: EdgeInsets.only(top: 60.0, bottom: 46.0),
  actionsPadding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 38.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0)
    )
  ),
  content: Text(
      "Do you wish to discard\nthis order?",
      style: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xFF243656)
      ),
      textAlign: TextAlign.center,
    ),
  actions: [
    discardButton,
    cancelButton,
  ],
);

