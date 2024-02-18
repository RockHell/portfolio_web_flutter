import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/card_horizontal.dart';

class CardHorizontalCategory {
  final String label = 'CardHorizontal';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: CardHorizontal(
            imagePath: ImagePaths.myBackground,
            title: R.dummyTitle,
            description: R.dummyDescription,
            date: R.dummyDate,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: CardHorizontal(
            vectorPath: VectorPaths.nameDayApp,
            title: R.dummyTitleLong,
            description: R.dummyDescription,
            date: R.dummyDate,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: CardHorizontal(
            title: R.dummyTitle,
            description: R.dummyDescription,
            date: R.dummyDate,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: const CardHorizontal(
            title: R.dummyTitle,
            description: R.dummyDescription,
            date: R.dummyDate,
          ),
        ),
      ];
}
