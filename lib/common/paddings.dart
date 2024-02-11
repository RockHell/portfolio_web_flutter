import 'package:flutter/material.dart';
import 'package:my_portfolio/common/screen_size_handler.dart';

class Paddings {
  final BuildContext context;

  Paddings._(this.context);

  static Paddings of(BuildContext context) => Paddings._(context);

  double get padding_4 => [2.0, 3.0, 4.0, 4.0, 4.0, 4.0].elementAt(context.device);

  double get padding_8 => [4.0, 6.0, 8.0, 8.0, 8.0, 8.0].elementAt(context.device);

  double get padding_12 => [6.0, 9.0, 12.0, 12.0, 12.0, 12.0].elementAt(context.device);

  double get padding_16 => [8.0, 12.0, 16.0, 16.0, 16.0, 16.0].elementAt(context.device);

  double get padding_24 => [12.0, 18.0, 24.0, 24.0, 24.0, 24.0].elementAt(context.device);

  double get padding_48 => [24.0, 36.0, 48.0, 48.0, 48.0, 48.0].elementAt(context.device);

  double get padding_72 => [36.0, 54.0, 72.0, 72.0, 72.0, 72.0].elementAt(context.device);

  double get mainBackgroundPadding => [28.0, 32.0, 36.0, 44.0, 52.0, 60.0].elementAt(context.device);
}
