import 'package:flutter/material.dart';

class SavedNumber extends StatelessWidget {
  const SavedNumber({
    Key key,
    this.imgPath,
    this.networkText,
    this.press,
    this.numberText,
  }) : super(key: key);
  final String imgPath;
  final String networkText;
  final String numberText;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 75.0,
          width: 335.0,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color(0xFFF2F2F2))),
            onPressed: press,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  imgPath,
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
                      networkText,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Text(
                      numberText,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
