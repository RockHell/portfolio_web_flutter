import 'package:flutter/material.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class WidgetLabel extends StatelessWidget {
  const WidgetLabel({
    super.key,
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          label,
          textSize: Dimensions.of(context).text16,
          fontWeight: FontWeight.bold,
          padding: EdgeInsets.only(bottom: Paddings.of(context).padding_8),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: Paddings.of(context).padding_24),
          child: child,
        ),
      ],
    );
  }
}
