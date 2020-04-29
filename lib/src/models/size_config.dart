import 'package:flutter/cupertino.dart';

class SizeConfig {
  double _screenWidth;
  double _screenHeight;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;

  void init(BoxConstraints constraints) {
    _screenHeight = constraints.maxHeight;
    _screenWidth = constraints.maxWidth;

    heightMultiplier = _screenHeight / 100;
    widthMultiplier = _screenWidth / 100;

    imageSizeMultiplier = widthMultiplier;
    textMultiplier = heightMultiplier;
  }
}
