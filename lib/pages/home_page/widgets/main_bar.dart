import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
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
        horizontal: Paddings(context).homepageMainPadding,
        vertical: Paddings(context).padding_12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (kDebugMode)
            LargeIconButton(
              icon: Icons.design_services_outlined,
              tooltip: context.tr('titleWidgets'),
              onTap: () {
                myPush(context, const WidgetsPage());
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
          LargeIconButton(
            icon: Icons.info_outline,
            // TODO Open info page
            tooltip: context.tr('info'),
            onTap: () {
              // TODO
            },
          ),
        ],
      ),
    );
  }
}
