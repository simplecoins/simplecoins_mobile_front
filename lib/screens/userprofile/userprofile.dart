import 'package:flutter/material.dart';
import 'package:simplecoins_0/enum/constants.dart';

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GOOD EVENING',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF808080)
                      ),
                    ),
                    Text(
                      'Andy Andy Kwesi',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${transactions.length} Total Orders',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF40A187)
                      ),
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/Homescreen/Ellipse 14.png',
                  width: 93.0,
                )
              ],
            ),
            SizedBox(
              height: 56.0,
            ),
            Row(
              children: [
                Text(
                  'Personal info',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Text(
                  'E-mail',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                ),
                SizedBox(
                  width: 71.0,
                ),
                Text(
                  'vadikforz@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF243656)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              children: [
                Text(
                  'Phone',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                ),
                SizedBox(
                  width: 71.0,
                ),
                Text(
                  '+4 1782 049 294',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF243656)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Text(
                  'Security',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                ),
                SizedBox(
                  width: 45.0,
                ),
                Text(
                  '··········',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF243656)
                  ),
                ),
                Spacer(),
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
                Text(
                  'Identity',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                ),
                SizedBox(
                  width: 60.0,
                ),
                Text(
                  'Verify my identity',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    color: Color(0xFFAAABAE)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Text(
                  'Support',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Text(
                  'Telegram',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                ),
                SizedBox(
                  width: 48.0,
                ),
                Text(
                  '@simplecoins',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3E8BF7)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 17.0,
            ),
            Row(
              children: [
                Text(
                  'Twitter',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                ),
                SizedBox(
                  width: 65.0,
                ),
                Text(
                  '@simplecoins',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3E8BF7)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 17.0,
            ),
            Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF243656)
                  ),
                ),
                SizedBox(
                  width: 77.0,
                ),
                Text(
                  'support@simplecoins.africa',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3E8BF7)
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: 69.0,
            // ),
            Spacer(),
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
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
