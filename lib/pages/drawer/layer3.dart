import 'package:flutter/material.dart';
import 'package:bugheist/pages/login_signup.dart';

class ThirdLayer extends StatelessWidget {
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
                // Update trhe state of the app
                // ...
                // Then close the drawer
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
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Stats'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Terms and Conditions'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
