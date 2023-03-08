import 'package:flutter/material.dart';
import 'src/app.dart';
import 'package:flutter/services.dart';
// Application's entry point
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Check the device's screen size
  var screenSize = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  if (screenSize.shortestSide < 600) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then((value) => runApp(BLT()));
  }
  runApp(BLT());
}
