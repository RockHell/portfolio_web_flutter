import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/screen_size_handler.dart';

class Paddings {
  Paddings(this.context);

  final BuildContext context;

  double get padding_4 => [3.0, 3.0, 4.0, 4.0, 4.0, 4.0].elementAt(context.device);

  double get padding_8 => [6.0, 6.0, 8.0, 8.0, 8.0, 8.0].elementAt(context.device);

  double get padding_12 => [9.0, 9.0, 12.0, 12.0, 12.0, 12.0].elementAt(context.device);

  double get padding_16 => [12.0, 12.0, 16.0, 16.0, 16.0, 16.0].elementAt(context.device);

  double get padding_24 => [18.0, 18.0, 24.0, 24.0, 24.0, 24.0].elementAt(context.device);

  double get padding_48 => [36.0, 36.0, 48.0, 48.0, 48.0, 48.0].elementAt(context.device);

  double get padding_72 => [54.0, 54.0, 72.0, 72.0, 72.0, 72.0].elementAt(context.device);

  // Page specific paddings

  double get homepageMainPadding => [12.0, 24.0, 36.0, 48.0, 48.0, 48.0].elementAt(context.device);
}
