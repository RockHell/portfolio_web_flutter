import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/screen_size_handler.dart';

class Grids {
  Grids(this.context);

  final BuildContext context;

  // HomePage
  int get gridHomePage => (context.width <= 900) ? 1 : ((context.width - 900) / 400).ceil() + 1;

  // All
  int get gridAllPage => (context.width <= 900) ? 1 : ((context.width - 900) / 400).ceil() + 1;

  static int gridHomeProjects(double currentWidth) => (currentWidth < 250) ? 1 : ((currentWidth - 250) / 200).ceil() + 1;
}
