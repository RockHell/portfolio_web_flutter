import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_wrap.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class TitleClickableCategory extends StatelessWidget {
  const TitleClickableCategory({
    super.key,
  });

  String get label => 'TitleClickable';

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
                child: TitleClickable(
                  vectorPath: VectorPaths.flutter,
                  title: R.dummyTitle,
                  rightText: R.dummyButton,
                  onTap: () {},
                ),
              ),
              WidgetWrap(
                child: TitleClickable(
                  title: R.dummyTitle,
                  rightText: R.dummyButton,
                  onTap: () {},
                ),
              ),
              const WidgetWrap(
                isLast: true,
                child: TitleClickable(
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
