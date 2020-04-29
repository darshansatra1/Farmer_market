import 'package:farmarket/src/models/size_config.dart';
import 'package:flutter/cupertino.dart';

abstract class TextFieldStyle {
  static double textBoxHorizontal() {
    return SizeConfig.widthMultiplier * 10;
  }

  static double textBoxVertical() {
    return SizeConfig.heightMultiplier * 3;
  }
}
