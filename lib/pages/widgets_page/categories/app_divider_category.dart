import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/app_divider.dart';

class AppDividerCategory {
  final String label = 'AppDivider';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: const AppDivider(),
        ),
      ];
}
