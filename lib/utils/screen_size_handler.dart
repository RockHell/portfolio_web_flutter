import 'package:flutter/material.dart';

extension BuildContextEntension<T> on BuildContext {
  int getScreenSize(double width) {
    if (width < 400) {
      return 0;
    } else if (width >= 400 && width < 600) {
      return 1;
    } else if (width >= 600 && width < 800) {
      return 2;
    } else if (width >= 800 && width < 1100) {
      return 3;
    } else if (width >= 1100 && width < 1400) {
      return 4;
    } else {
      return 5;
    }
  }

  int get device => getScreenSize(width);

  int get numberOf300Px => width ~/ 300 > 0 ? width ~/ 300 : 1;

  int get numberOf500Px => width ~/ 500 > 0 ? width ~/ 500 : 1;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  Size get size => MediaQuery.of(this).size;
}
