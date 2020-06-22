import 'package:flutter/material.dart';

class SizeConfig {
  static getDeviceHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  static getDeviceWidth(context) {
    return MediaQuery.of(context).size.width;
  }
}
