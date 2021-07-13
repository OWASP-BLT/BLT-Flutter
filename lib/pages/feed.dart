import 'package:bugheist/pages/error_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:connectivity/connectivity.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  bool _isConnection = true;
  Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    check().then(
      (internet) async {
        if (internet == false) {
          setState(
            () {
              _isConnection = false;
            },
          );
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isConnection) {
      return Scaffold(
        body: Center(
          child: Text('Feed Page'),
        ),
      );
    } else {
      return ErrorPage();
    }
  }
}
