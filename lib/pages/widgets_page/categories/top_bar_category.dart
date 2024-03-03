import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_wrap.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class TopBarCategory extends StatelessWidget {
  const TopBarCategory({
    super.key,
  });

  String get label => 'TopBar';

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
                child: TopBar(
                  title: R.dummyTitle,
                  onTap: () {},
                ),
              ),
              const WidgetWrap(
                child: TopBar(
                  title: R.dummyTitleLong,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
