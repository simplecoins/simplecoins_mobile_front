import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
    this.bcolor,
    this.tcolor,
  }) : super(key: key);
  final String? text;
  final Function? press;
  final Color? bcolor;
  final Color? tcolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 311,
      child: FlatButton(
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: bcolor!)),
        color: bcolor,
        child: Text(
          text!,
          style: TextStyle(
              color: tcolor,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 16),
        ),
        onPressed: press as void Function()?,
      ),
    );
  }
}
