import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplecoins_0/enum/constants.dart';
import 'package:simplecoins_0/helpers/assistant_methods.dart';
import 'package:simplecoins_0/models/user.dart';
import 'package:simplecoins_0/utils/sizeConfig.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'support@simplecoins.africa',
    query:
        'subject=App Feedback&body=App Version 3.23', //add subject and body here
  );

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
              fontSize: getProportionateScreenWidth(17.0)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20.0)),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateTime.now().hour < 10
                          ? 'GOOD MORNING'
                          : DateTime.now().hour < 18
                              ? 'GOOD DAY'
                              : 'GOOD EVENING',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF808080)),
                    ),
                    Text(
                      // Provider.of<User>(context, listen: false).name!,
                      userLogin!.name!,
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${transactions.length} Total Orders',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF40A187)),
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/Homescreen/Ellipse 14.png',
                  width: getProportionateScreenWidth(93.0),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(56.0),
            ),
            Row(
              children: [
                Text(
                  'Personal info',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(12.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(16.0),
            ),
            Row(
              children: [
                Text(
                  'E-mail',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(71.0),
                ),
                Text(
                  // Provider.of<User>(context, listen: false).email!,
                  userLogin!.email!,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF243656)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(18.0),
            ),
            Row(
              children: [
                Text(
                  'Phone',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(71.0),
                ),
                Text(
                  '+${userLogin!.phone!}',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF243656)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            Row(
              children: [
                Text(
                  'Security',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(12.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(16.0),
            ),
            Row(
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(45.0),
                ),
                Text(
                  '··········',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(30.0),
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF243656)),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Color(0xFF3E8BF7),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/changepassword');
                  },
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Identity',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60.0),
                ),
                Text(
                  'Verify my identity',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      color: Color(0xFFAAABAE)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            Row(
              children: [
                Text(
                  'Support',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(12.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(16.0),
            ),
            Row(
              children: [
                Text(
                  'Telegram',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(48.0),
                ),
                GestureDetector(
                  onTap: () async {
                    const url = "https://t.me/atsigndreezy";
                    if (await canLaunch(url))
                      await launch(url);
                    else
                      // can't launch url, there is some error
                      throw "Could not launch $url";
                  },
                  child: Text(
                    '@simplecoins',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3E8BF7)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(17.0),
            ),
            Row(
              children: [
                Text(
                  'Twitter',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(65.0),
                ),
                GestureDetector(
                  onTap: () async {
                    const url = "https://twitter.com/simplecoins";
                    if (await canLaunch(url))
                      await launch(url);
                    else
                      // can't launch url, there is some error
                      throw "Could not launch $url";
                  },
                  child: Text(
                    '@simplecoins',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3E8BF7)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(17.0),
            ),
            Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(77.0),
                ),
                GestureDetector(
                  onTap: () async {
                    var url = params.toString();
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    'support@simplecoins.africa',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3E8BF7)),
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: 69.0,
            // ),
            Spacer(),
            SizedBox(
              height: getProportionateScreenHeight(64.0),
              width: getProportionateScreenWidth(311),
              child: FlatButton(
                padding: EdgeInsets.all(getProportionateScreenWidth(20.0)),
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
                          color: Color(0xFFE56565), fontFamily: 'Manrope'),
                    ),
                  ],
                ),
                onPressed: () async {
                  clearUserLogin();
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/signin', ModalRoute.withName('/onboarding'));
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(15.0),
            )
          ],
        ),
      ),
    );
  }
}
