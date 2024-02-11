import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/screen_size_handler.dart';

class Dimensions {
  final BuildContext context;

  Dimensions._(this.context);

  static Dimensions of(BuildContext context) => Dimensions._(context);

  // Text
  double get text18 => [16.0, 17.0, 18.0, 18.0, 18.0, 18.0].elementAt(context.device);

  double get text16 => [14.0, 15.0, 16.0, 16.0, 16.0, 16.0].elementAt(context.device);

  double get text14 => [12.0, 13.0, 14.0, 14.0, 14.0, 14.0].elementAt(context.device);

  double get text12 => [10.0, 11.0, 12.0, 12.0, 12.0, 12.0].elementAt(context.device);

  // Icons
  double get icon20 => [16.0, 18.0, 20.0, 20.0, 20.0, 20.0].elementAt(context.device);

  // Cards
  static const cardOuterBorderRadius = 8.0;
  static const cardInnerBorderRadius = 6.0;

  double get card2ImageSize => [50.0, 60.0, 70.0, 70.0, 70.0, 70.0].elementAt(context.device);
  double get card3ImageSize => [30.0, 40.0, 50.0, 50.0, 50.0, 50.0].elementAt(context.device);

  // Scrollbar
  static const scrollbarRadius = 10.0;

  // Buttons
  static const buttonBorderRadius = 8.0;
}
