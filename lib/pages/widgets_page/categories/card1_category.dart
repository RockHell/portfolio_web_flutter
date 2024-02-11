import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/card_1.dart';

class Card1Category extends StatelessWidget {
  const Card1Category({
    super.key,
  });

  final String label = 'Card1';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetLabel(
          label: label,
          child: Card1(
            imagePath: ImagePaths.myBackground,
            title: R.dummyTitle,
            description: R.dummyDescription,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: Card1(
            vectorPath: VectorPaths.svatkyApp,
            title: R.dummyTitleLong,
            description: R.dummyDescription,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: Card1(
            title: R.dummyTitle,
            description: R.dummyDescription,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: const Card1(
            title: R.dummyTitle,
            description: R.dummyDescription,
          ),
        ),
      ],
    );
  }
}
