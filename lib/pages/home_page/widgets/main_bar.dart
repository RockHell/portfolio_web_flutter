import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/about_me_page/about_me_page.dart';
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
        horizontal: Paddings(context).mainPadding,
        vertical: Paddings(context).padding_12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (kDebugMode)
            LargeIconButton(
              icon: Icons.design_services_outlined,
              tooltip: "Seznam widgetů",
              onTap: () {
                myPush(context, const WidgetsPage());
              },
            ),
          /*
          // TODO
          LargeIconButton(
            icon: Icons.dark_mode_outlined,
            // TODO switch translations for darkMode and lightMode
            tooltip: "Tmavý režim",
            onTap: () {
              // TODO
            },
          ),
          LargeIconButton(
            icon: Icons.person_outline,
            tooltip: "O mně",
            onTap: () {
              myPush(context, const AboutMePage());
            },
          ),
           */
        ],
      ),
    );
  }
}
