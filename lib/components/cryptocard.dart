import 'package:flutter/material.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({Key? key, this.cryptoName, this.imgPath, this.press})
      : super(key: key);
  final String? imgPath;
  final String? cryptoName;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.0,
      width: 335.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Color(0xFFF2F2F2))),
        onPressed: press as void Function()?,
        child: (Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imgPath!,
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
                  cryptoName!,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  '\$37,000.00',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xFF37D39B)),
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
