import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'User Profile',
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
                Column(
                  children: [
                    Text('GOOD EVENING'),
                    Text('Andy Andy Kwesi'),
                    Text('23 Total Orders')
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/Homescreen/Ellipse 14.png',
                  width: 93.0,
                )
              ],
            ),
            Row(
              children: [Text('Personal info')],
            ),
            Row(
              children: [
                Text('E-mail'),
                SizedBox(
                  width: 71.0,
                ),
                Text('vadikforz@gmail.com')
              ],
            ),
            Row(
              children: [
                Text('Phone'),
                SizedBox(
                  width: 71.0,
                ),
                Text('+4 1782 049 294')
              ],
            ),
            Row(
              children: [Text('Security')],
            ),
            Row(
              children: [
                Text('Password'),
                SizedBox(
                  width: 45.0,
                ),
                Text('··········'),
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Color(0xFF3E8BF7),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              children: [
                Text('Identity'),
                SizedBox(
                  width: 60.0,
                ),
                Text('Verify my identity')
              ],
            ),
            Row(
              children: [Text('Support')],
            ),
            Row(
              children: [
                Text('Telegram'),
                SizedBox(
                  width: 71.0,
                ),
                Text(
                  '@simplecoins',
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text('Twitter'),
                SizedBox(
                  width: 71.0,
                ),
                Text(
                  '@simplecoins',
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text('Email'),
                SizedBox(
                  width: 71.0,
                ),
                Text(
                  'support@simplecoins.africa',
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),
                )
              ],
            ),
            SizedBox(
              height: 64,
              width: 311,
              child: FlatButton(
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Color(0xFFE56565))),
                //color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xFFE56565),
                        fontFamily: 'Manrope'
                        ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
