import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  DefaultButton(
      {
    Key? key,
    this.text,
    this.press,
    this.bcolor,
    this.tcolor,
      this.isActive = true
  }) : super(key: key);
  final String? text;
  final Function? press;
  final Color? bcolor;
  final Color? tcolor;
  bool isActive;

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 64,
      width: 311,
      decoration: BoxDecoration(
        color: widget.isActive ? Colors.black : Color(0xFFF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: FlatButton(
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
                color: widget.isActive ? Colors.black : Color(0xFFF2F2F2))),
        // color: widget.isActive ? Colors.black : Color(0xFFF2F2F2),
        child: Text(
          widget.text!,
          style: TextStyle(
              color: widget.isActive ? Colors.white : Color(0xFFAAABAE),
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 16),
        ),
        onPressed: widget.isActive ? widget.press as void Function()? : () {},
      ),
    );
  }
}
