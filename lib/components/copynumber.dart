import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';

class CopyNumber extends StatelessWidget {
  const CopyNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(75.0),
      width: getProportionateScreenWidth(335.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFF2F2F2)),
        //color: Colors.black
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/MoMo Networks/Vodafone.png',
            width: getProportionateScreenWidth(52.0),
          ),
          SizedBox(
            width: getProportionateScreenWidth(10.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Andy Apenteng',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(16),
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500
                )
              ),
              Text(
                '0503091855',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(14),
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400
                )
              )
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              // copy to clipboard
              Clipboard.setData(ClipboardData(text: "0503091855"));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFBFDBFE),
                  borderRadius: BorderRadius.circular(10.0)),
              height: getProportionateScreenHeight(63.0),
              width: getProportionateScreenWidth(60.0),
              child: Center(
                child: Text(
                  'Copy',
                  style: TextStyle(
                  color: Color(0xFF1D4ED8),
                  fontSize: getProportionateScreenWidth(12),
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600
                )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
