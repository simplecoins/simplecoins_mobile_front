import 'package:flutter/material.dart';
import 'package:simplecoins_0/enum/constants.dart';

// TextEditingController accName = TextEditingController();
// TextEditingController accNumber = TextEditingController();

class NewNumber extends StatefulWidget {
  NewNumber(
      {Key? key,
      this.imgPath,
      this.text,
      this.stateSetter,
      required this.nameController,
      required this.numberController})
      : super(key: key);
  final String? imgPath;
  final String? text;
  final VoidCallback? stateSetter;
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  _NewNumberState createState() => _NewNumberState();
}

class _NewNumberState extends State<NewNumber> {
  bool isCardVisible = false;
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
            onPressed: () {
              setState(() {
                isCardVisible = !isCardVisible;
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  widget.imgPath!,
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
                      widget.text!,
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
        Container(
            child: isCardVisible
                ? Column(
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
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        controller: widget.nameController,
                        autofocus: false,
                        keyboardType: TextInputType.name,
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
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        controller: widget.numberController,
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            //hintText: 'Email',
                            contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ],
                  )
                : Offstage())
      ],
    );
  }
}
