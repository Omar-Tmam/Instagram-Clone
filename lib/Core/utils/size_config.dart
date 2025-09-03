import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1430;
  static const double tablet = 550;
  static late double width, height;
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;

    width = MediaQuery.sizeOf(context).width;
  }

  double heightSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.height * value;
  }

  double widthSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.width * value;
  }
}
