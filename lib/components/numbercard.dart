import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key key, this.imgPath, this.press})
      : super(key: key);
  final String imgPath;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.0,
      width: 335.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Color(0xFFF2F2F2))),
        onPressed: press,
        child: (Row(
          //mainAxisAlignment: MainAxisAlignment.center,
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
                  'chxfh',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.chevron_right)
          ],
        )),
      ),
    );
  }
}
