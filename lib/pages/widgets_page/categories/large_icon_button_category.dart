import 'package:flutter/material.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/large_icon_button.dart';

class LargeIconButtonCategory {
  final String label = 'LargeIconButton';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: LargeIconButton(
            icon: Icons.add,
            tooltip: R.dummyTooltip,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: const LargeIconButton(
            icon: Icons.add_location_alt_outlined,
            tooltip: R.dummyTooltip,
          ),
        ),
      ];
}
