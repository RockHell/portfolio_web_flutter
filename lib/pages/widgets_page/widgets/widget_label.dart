import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class WidgetLabel extends StatelessWidget {
  const WidgetLabel({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Paddings(context).padding_12,
      ),
      child: Row(
        children: [
          Icon(
            Icons.arrow_right,
            color: AppColors.iconColor,
            size: Dimensions(context).icon20,
          ),
          Flexible(
            child: AppText(
              label,
              textSize: Dimensions(context).text18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
