import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/screen_size_handler.dart';

class Grids {
  final BuildContext context;

  Grids._(this.context);

  static Grids of(BuildContext context) => Grids._(context);

  // HomePage
  int get homepageColumns => [1, 1, 2, 2, 3, 4].elementAt(context.device);

  // WidgetsPage
  int get grid300Px => context.numberOf300Px;
}
