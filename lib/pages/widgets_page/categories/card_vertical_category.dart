import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/card_vertical.dart';

class CardVerticalCategory {
  final String label = 'CardVertical';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: CardVertical(
            imagePath: ImagePaths.aboutMeBackground,
            title: R.dummyTitle,
            description: R.dummyDescription,
            date: R.dummyDate,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: CardVertical(
            vectorPath: VectorPaths.nameDayApp,
            title: R.dummyTitleLong,
            description: R.dummyDescription,
            date: R.dummyDate,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: CardVertical(
            title: R.dummyTitle,
            description: R.dummyDescription,
            date: R.dummyDate,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: const CardVertical(
            title: R.dummyTitle,
            description: R.dummyDescription,
            date: R.dummyDate,
          ),
        ),
      ];
}
