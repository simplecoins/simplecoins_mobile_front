import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';

class EnterAmount extends StatefulWidget {
  @override
  _EnterAmountState createState() => _EnterAmountState();
}

class _EnterAmountState extends State<EnterAmount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Buy Bitcoin',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('How much BTC you wish to buy'),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '\$ 0.00',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  fontSize: 60),
            ),
            Text(
              'GHS 0.00',
              style: TextStyle(fontFamily: 'Manrope'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    PadNumber(
                      text: '1',
                    ),
                    PadNumber(
                      text: '2',
                    ),
                    PadNumber(
                      text: '3',
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    PadNumber(
                      text: '4',
                    ),
                    PadNumber(
                      text: '5',
                    ),
                    PadNumber(
                      text: '6',
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    PadNumber(
                      text: '7',
                    ),
                    PadNumber(
                      text: '8',
                    ),
                    PadNumber(
                      text: '9',
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    PadNumber(
                      text: '.',
                    ),
                    PadNumber(
                      text: '0',
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.backspace_outlined),
                    )
                  ],
                )
              ],
            ),
            Spacer(),
            DefaultButton(
              text: 'Next',
              press: () {},
            ),
            SizedBox(
              height: 25.0,
            )
          ],
        ),
      ),
    );
  }
}

class PadNumber extends StatelessWidget {
  const PadNumber({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(45.0),
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle
        ),
        height: 72.0,
        width: 72.0,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
