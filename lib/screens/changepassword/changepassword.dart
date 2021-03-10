import 'package:flutter/material.dart';
import 'package:simplecoins_0/components/button.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Change Password',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 17.0),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Current Password',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'New Password',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'Confirm New Password',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 20.0,
            ),
            Spacer(),
            DefaultButton(
              text: 'Change Password',
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
