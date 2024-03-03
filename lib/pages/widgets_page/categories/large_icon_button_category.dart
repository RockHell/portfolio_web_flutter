import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_wrap.dart';
import 'package:my_portfolio/widgets/large_icon_button.dart';

class LargeIconButtonCategory extends StatelessWidget {
  const LargeIconButtonCategory({
    super.key,
  });

  String get label => 'LargeIconButton';

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
                child: LargeIconButton(
                  icon: Icons.add,
                  tooltip: R.dummyTooltip,
                  onTap: () {},
                ),
              ),
              const WidgetWrap(
                isLast: true,
                child: LargeIconButton(
                  icon: Icons.add_location_alt_outlined,
                  tooltip: R.dummyTooltip,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
