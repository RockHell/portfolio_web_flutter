import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/widgets_page/widgets_page.dart';
import 'package:my_portfolio/utils/app_navigator.dart';
import 'package:my_portfolio/widgets/large_icon_button.dart';

class MainBar extends StatelessWidget {
  const MainBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Paddings.of(context).padding_48,
        vertical: Paddings.of(context).padding_12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LargeIconButton(
            icon: Icons.design_services_outlined,
            tooltip: context.tr('titleWidgets'),
            onTap: () {
              AppNavigator.push(context, const WidgetsPage());
            },
          ),
          LargeIconButton(
            icon: Icons.dark_mode_outlined,
            // TODO switch translations for darkMode and lightMode
            tooltip: context.tr('darkMode'),
            onTap: () {
            // TODO
            },
          ),
        ],
      ),
    );
  }
}
