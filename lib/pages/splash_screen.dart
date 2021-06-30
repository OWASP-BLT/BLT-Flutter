import 'dart:async';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 16), () => {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(253, 14, 53, 1),
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 2),
              child: Container(
                child: Image.asset(
                  "assets/path22.png",
                  width: MediaQuery.of(context).size.width * 0.0737,
                  height: MediaQuery.of(context).size.height * 0.0422,
                ),
              ),
            ),
            left: 0.22222 * MediaQuery.of(context).size.width,
            top: 0.5149 * MediaQuery.of(context).size.height,
            right: 0.7040 * MediaQuery.of(context).size.width,
            bottom: 0.4428 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 3),
              child: Image.asset(
                "assets/path26.png",
                width: MediaQuery.of(context).size.width * 0.0672,
                height: MediaQuery.of(context).size.height * 0.0318,
              ),
            ),
            left: 0.2995 * MediaQuery.of(context).size.width,
            top: 0.5255 * MediaQuery.of(context).size.height,
            right: 0.6333 * MediaQuery.of(context).size.width,
            bottom: 0.4427 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 4),
              child: Container(
                child: Image.asset(
                  "assets/path30.png",
                  width: MediaQuery.of(context).size.width * 0.0701,
                  height: MediaQuery.of(context).size.height * 0.0450,
                ),
              ),
            ),
            left: 0.3697 * MediaQuery.of(context).size.width,
            top: 0.5232 * MediaQuery.of(context).size.height,
            right: 0.5602 * MediaQuery.of(context).size.width,
            bottom: 0.4308 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 5),
              child: Container(
                child: Image.asset(
                  "assets/path34.png",
                  width: MediaQuery.of(context).size.width * 0.0730,
                  height: MediaQuery.of(context).size.height * 0.0427,
                ),
              ),
            ),
            left: 0.4602 * MediaQuery.of(context).size.width,
            top: 0.5149 * MediaQuery.of(context).size.height,
            right: 0.4667 * MediaQuery.of(context).size.width,
            bottom: 0.4423 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 6),
              child: Container(
                child: Image.asset(
                  "assets/path38.png",
                  width: MediaQuery.of(context).size.width * 0.0675,
                  height: MediaQuery.of(context).size.height * 0.0325,
                ),
              ),
            ),
            left: 0.5409 * MediaQuery.of(context).size.width,
            top: 0.5255 * MediaQuery.of(context).size.height,
            right: 0.3915 * MediaQuery.of(context).size.width,
            bottom: 0.4420 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 7),
              child: Container(
                child: Image.asset(
                  "assets/path54.png",
                  width: MediaQuery.of(context).size.width * 0.0265,
                  height: MediaQuery.of(context).size.height * 0.0450,
                ),
              ),
            ),
            left: 0.6147 * MediaQuery.of(context).size.width,
            top: 0.5280 * MediaQuery.of(context).size.height,
            right: 0.3588 * MediaQuery.of(context).size.width,
            bottom: 0.4269 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 8),
              child: Container(
                child: Image.asset(
                  "assets/path58.png",
                  width: MediaQuery.of(context).size.width * 0.0217,
                  height: MediaQuery.of(context).size.height * 0.0410,
                ),
              ),
            ),
            left: 0.6217 * MediaQuery.of(context).size.width,
            top: 0.5250 * MediaQuery.of(context).size.height,
            right: 0.3566 * MediaQuery.of(context).size.width,
            bottom: 0.4340 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 9),
              child: Container(
                child: Image.asset(
                  "assets/path62.png",
                  width: MediaQuery.of(context).size.width * 0.0216,
                  height: MediaQuery.of(context).size.height * 0.0365,
                ),
              ),
            ),
            left: 0.6275 * MediaQuery.of(context).size.width,
            top: 0.5215 * MediaQuery.of(context).size.height,
            right: 0.3508 * MediaQuery.of(context).size.width,
            bottom: 0.4420 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 10),
              child: Container(
                child: Image.asset(
                  "assets/path66.png",
                  width: MediaQuery.of(context).size.width * 0.0218,
                  height: MediaQuery.of(context).size.height * 0.0331,
                ),
              ),
            ),
            left: 0.6339 * MediaQuery.of(context).size.width,
            top: 0.5189 * MediaQuery.of(context).size.height,
            right: 0.3442 * MediaQuery.of(context).size.width,
            bottom: 0.4480 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 11),
              child: Container(
                child: Image.asset(
                  "assets/path50.png",
                  width: MediaQuery.of(context).size.width * 0.0445,
                  height: MediaQuery.of(context).size.height * 0.0445,
                ),
              ),
            ),
            left: 0.6256 * MediaQuery.of(context).size.width,
            top: 0.4927 * MediaQuery.of(context).size.height,
            right: 0.3298 * MediaQuery.of(context).size.width,
            bottom: 0.4867 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 12),
              child: Container(
                child: Image.asset(
                  "assets/path42.png",
                  width: MediaQuery.of(context).size.width * 0.0550,
                  height: MediaQuery.of(context).size.height * 0.0325,
                ),
              ),
            ),
            left: 0.6733 * MediaQuery.of(context).size.width,
            top: 0.5255 * MediaQuery.of(context).size.height,
            right: 0.2717 * MediaQuery.of(context).size.width,
            bottom: 0.4420 * MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: DelayedDisplay(
              delay: Duration(seconds: 13),
              child: Container(
                child: Image.asset(
                  "assets/path46.png",
                  width: MediaQuery.of(context).size.width * 0.0391,
                  height: MediaQuery.of(context).size.height * 0.0423,
                ),
              ),
            ),
            left: 0.7363 * MediaQuery.of(context).size.width,
            top: 0.5152 * MediaQuery.of(context).size.height,
            right: 0.2246 * MediaQuery.of(context).size.width,
            bottom: 0.4424 * MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}
