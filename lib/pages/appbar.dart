import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar()
      : super(
          centerTitle: true,
          title: Image.asset(
            'assets/bugheist_logo.png',
            fit: BoxFit.cover,
            height: 30,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.portrait_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        );
}
