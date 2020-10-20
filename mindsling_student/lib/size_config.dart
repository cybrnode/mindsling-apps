import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeWidth = 0;
  static double _blockSizeHeight = 0;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeWidth = _screenWidth / 100;
    _blockSizeHeight = _screenHeight / 100;

    textMultiplier = _blockSizeHeight;
    imageSizeMultiplier = _blockSizeWidth;
    heightMultiplier = _blockSizeHeight;
    widthMultiplier = _blockSizeWidth;

    print(_blockSizeWidth);
    print(_blockSizeHeight);
  }
}
