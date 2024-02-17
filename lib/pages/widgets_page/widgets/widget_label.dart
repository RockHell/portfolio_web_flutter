import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class WidgetLabel extends StatelessWidget {
  const WidgetLabel({
    required this.label,
    required this.child,
    super.key,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: AppColors.iconColor,
              size: Dimensions(context).icon20,
            ),
            Flexible(
              child: AppText(
                label,
                textSize: Dimensions(context).text16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: Paddings(context).padding_8,
            bottom: Paddings(context).padding_48,
          ),
          child: child,
        ),
      ],
    );
  }
}
