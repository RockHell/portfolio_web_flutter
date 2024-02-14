import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/screen_size_handler.dart';

class Dimensions {
  Dimensions(this.context);

  final BuildContext context;

  // Text
  double get text20 => [18.0, 19.0, 20.0, 20.0, 20.0, 20.0].elementAt(context.device);

  double get text18 => [16.0, 17.0, 18.0, 18.0, 18.0, 18.0].elementAt(context.device);

  double get text16 => [14.0, 15.0, 16.0, 16.0, 16.0, 16.0].elementAt(context.device);

  double get text14 => [12.0, 13.0, 14.0, 14.0, 14.0, 14.0].elementAt(context.device);

  double get text12 => [10.0, 11.0, 12.0, 12.0, 12.0, 12.0].elementAt(context.device);

  // Icons
  double get icon24 => [20.0, 22.0, 24.0, 24.0, 24.0, 24.0].elementAt(context.device);

  double get icon20 => [16.0, 18.0, 20.0, 20.0, 20.0, 20.0].elementAt(context.device);

  double get icon40 => [32.0, 36.0, 40.0, 40.0, 40.0, 40.0].elementAt(context.device);

  // Cards
  static const cardOuterBorderRadius = 8.0;
  static const cardInnerBorderRadius = 6.0;

  double get cardHorizontalImageSize => [50.0, 60.0, 70.0, 70.0, 70.0, 70.0].elementAt(context.device);

  double get cardHorizontalSmallImageSize => [40.0, 50.0, 60.0, 60.0, 60.0, 60.0].elementAt(context.device);

  // Scrollbar
  static const scrollbarRadius = 10.0;

  // Buttons
  static const buttonBorderRadius = 8.0;
}
