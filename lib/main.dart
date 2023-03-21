import 'package:blt/src/util/services/init_service.dart';
import 'package:flutter/material.dart';
import 'src/app.dart';
import 'package:flutter/services.dart';
// Application's entry point
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitService.init(); // Call the init method from the InitService class
  runApp(BLT());
}
