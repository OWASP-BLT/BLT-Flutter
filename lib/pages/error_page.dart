import 'package:bugheist/pages/report_bug.dart';
import 'package:flutter/material.dart';
import 'package:bugheist/pages/issues.dart';

class ErrorPage extends StatefulWidget {
  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    if (_index == 0) {
      return Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(55, 10, 55, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "ERROR",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/XMLID.png",
                      width: MediaQuery.of(context).size.width * 0.77,
                      height: MediaQuery.of(context).size.height * 0.33,
                    ),
                  ),
                  Text(
                    "Yikes!",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    "You’ve found a bug on Bugheist!\nFeel free to report it or go home.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.043,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        primary: Color.fromRGBO(253, 14, 53, 1), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      child: Text(
                        "REPORT",
                      ),
                      onPressed: () {
                        setState(() {
                          _index = 1;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.043,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        primary: Color.fromRGBO(20, 201, 91, 1), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      child: Text(
                        "HOME",
                      ),
                      onPressed: () {
                        _index = 2;
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    } else if (_index == 1) {
      return ReportBug();
    } else {
      return PaginatedClass();
    }
  }
}
