import 'package:flutter/material.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class TitleClickableCategory {
  final String label = 'TitleClickable';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: TitleClickable(
            title: R.dummyTitle,
            onTap: () {},
          ),
        ),
      ];
}
