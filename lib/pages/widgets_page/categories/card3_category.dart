import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/card_3.dart';

class Card3Category extends StatelessWidget {
  const Card3Category({
    super.key,
  });

  final String label = 'Card3';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetLabel(
          label: label,
          child: Card3(
            imagePath: ImagePaths.myBackground,
            title: R.dummyTitle,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: Card3(
            vectorPath: VectorPaths.svatkyApp,
            title: R.dummyTitleLong,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: Card3(
            title: R.dummyTitle,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: const Card3(
            title: R.dummyTitle,
          ),
        ),
      ],
    );
  }
}
