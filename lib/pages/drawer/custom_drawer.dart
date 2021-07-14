import 'package:bugheist/pages/drawer/layer1.dart';
import 'package:bugheist/pages/drawer/layer2.dart';
import 'package:bugheist/pages/drawer/layer3.dart';
import 'package:flutter/material.dart';
import 'package:bugheist/pages/home.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FirstLayer(),
          SecondLayer(),
          ThirdLayer(),
          Home(),
        ],
      ),
    );
  }
}
