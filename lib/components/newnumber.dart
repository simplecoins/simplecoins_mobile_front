import 'package:flutter/material.dart';
import 'package:simplecoins_0/enum/constants.dart';

TextEditingController accName = TextEditingController();
TextEditingController accNumber = TextEditingController();

class NewNumber extends StatelessWidget {
  const NewNumber({
    Key key,
    this.imgPath,
    this.text,
    this.press,
  }) : super(key: key);
  final String imgPath;
  final String text;
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
                      text,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    )
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
        ),
        Visibility(
          visible: isVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 19.0,
              ),
              Text(
                'Account Name',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  fontSize: 14
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: accName,
                autofocus: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    //hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Account Number',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  fontSize: 14
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: accNumber,
                autofocus: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    //hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
