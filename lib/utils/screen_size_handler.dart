import 'package:flutter/material.dart';

extension BuildContextEntension<T> on BuildContext {
  int getScreenSize(double width) {
    if (width < 400) {
      return 0;
    } else if (width < 600) {
      return 1;
    } else if (width < 900) {
      return 2;
    } else if (width < 1100) {
      return 3;
    } else if (width < 1400) {
      return 4;
    } else {
      return 5;
    }
  }

  int get device => getScreenSize(width);

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  Size get size => MediaQuery.of(this).size;
}
