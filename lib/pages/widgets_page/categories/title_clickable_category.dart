import 'package:flutter/material.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class TitleClickableCategory extends StatelessWidget {
  const TitleClickableCategory({
    super.key,
  });

  final String label = 'TitleClickable';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetLabel(
          label: label,
          child: TitleClickable(
            title: R.dummyTitle,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
