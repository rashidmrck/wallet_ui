import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterui1/screens/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      home: HomePage(),
    );
  }
}
