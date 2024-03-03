import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_wrap.dart';
import 'package:my_portfolio/widgets/app_divider.dart';

class AppDividerCategory extends StatelessWidget {
  const AppDividerCategory({
    super.key,
  });

  String get label => 'AppDivider';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Paddings(context).padding_48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetLabel(
            label: label,
          ),
          const Wrap(
            children: [
              WidgetWrap(
                isLast: true,
                child: AppDivider(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
