import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.margin = EdgeInsets.zero,
  });

  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        height: 1.0,
        color: AppColors.selectionBlackBackground,
      ),
    );
  }
}
