import 'package:flutter/material.dart';
import 'package:bugheist/pages/splash_screen.dart';
import 'package:bugheist/pages/login_signup.dart';
import 'dart:async';

void main() {
  runApp(SplashScreen());
  Future.delayed(const Duration(seconds: 16), () {
    runApp(LoginSignUp());
  });
}
