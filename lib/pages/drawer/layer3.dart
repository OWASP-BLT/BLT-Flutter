import 'package:bugheist/pages/about.dart';
import 'package:bugheist/pages/privacy.dart';
import 'package:flutter/material.dart';
import 'package:bugheist/pages/login_signup.dart';
import 'package:bugheist/pages/terms.dart';

class ThirdLayer extends StatefulWidget {
  @override
  _ThirdLayerState createState() => _ThirdLayerState();
}

class _ThirdLayerState extends State<ThirdLayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              accountName: Text(
                "anonymous",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "anonymous@gmail.com",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/bug.png",
                ),
                foregroundColor: Color(0xFFDC4654),
              ),
            ),
            Container(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginSignUp(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Social'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Stats'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutClass(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyClass(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Terms and Conditions'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsClass(),
                  ),
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
