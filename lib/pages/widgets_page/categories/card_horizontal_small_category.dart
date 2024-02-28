import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/card_horizontal_small.dart';

class CardHorizontalSmallCategory {
  final String label = 'CardHorizontalSmall';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: CardHorizontalSmall(
            imagePath: ImagePaths.aboutMeBackground,
            title: R.dummyTitle,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: CardHorizontalSmall(
            vectorPath: VectorPaths.nameDayApp,
            title: R.dummyTitleLong,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: CardHorizontalSmall(
            title: R.dummyTitle,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: const CardHorizontalSmall(
            title: R.dummyTitle,
          ),
        ),
      ];
}
