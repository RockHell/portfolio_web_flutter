import 'package:flutter/material.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class TopBarCategory {
  final String label = 'TopBar';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: TopBar(
            title: R.dummyTitle,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: const TopBar(
            title: R.dummyTitleLong,
          ),
        ),
      ];
}
