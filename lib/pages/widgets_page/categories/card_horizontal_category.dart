import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_wrap.dart';
import 'package:my_portfolio/widgets/card_horizontal.dart';

class CardHorizontalCategory extends StatelessWidget {
  const CardHorizontalCategory({
    super.key,
  });

  String get label => 'CardHorizontal';

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
                child: CardHorizontal(
                  imagePath: ImagePaths.aboutMeBackground,
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  date: R.dummyDate,
                  onTap: () {},
                ),
              ),
              WidgetWrap(
                child: CardHorizontal(
                  vectorPath: VectorPaths.nameDayApp,
                  title: R.dummyTitleLong,
                  description: R.dummyDescription,
                  date: R.dummyDate,
                  onTap: () {},
                ),
              ),
              WidgetWrap(
                child: CardHorizontal(
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  date: R.dummyDate,
                  onTap: () {},
                ),
              ),
              const WidgetWrap(
                isLast: true,
                child: CardHorizontal(
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  date: R.dummyDate,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
