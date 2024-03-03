import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_wrap.dart';
import 'package:my_portfolio/widgets/card_horizontal_small.dart';

class CardHorizontalSmallCategory extends StatelessWidget {
  const CardHorizontalSmallCategory({
    super.key,
  });

  String get label => 'CardHorizontalSmall';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Paddings(context).padding_48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetLabel(
            label: label,
          ),
          Wrap(
            children: [
              WidgetWrap(
                child: CardHorizontalSmall(
                  imagePath: ImagePaths.aboutMeBackground,
                  title: R.dummyTitle,
                  onTap: () {},
                ),
              ),
              WidgetWrap(
                child: CardHorizontalSmall(
                  vectorPath: VectorPaths.nameDayApp,
                  title: R.dummyTitleLong,
                  onTap: () {},
                ),
              ),
              WidgetWrap(
                child: CardHorizontalSmall(
                  title: R.dummyTitle,
                  onTap: () {},
                ),
              ),
              const WidgetWrap(
                isLast: true,
                child: CardHorizontalSmall(
                  title: R.dummyTitle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
