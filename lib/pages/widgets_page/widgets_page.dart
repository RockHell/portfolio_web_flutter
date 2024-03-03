import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/widgets_page/categories/app_divider_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card_horizontal_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card_horizontal_small_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card_vertical_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/circle_image_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/large_icon_button_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/title_clickable_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/top_bar_category.dart';
import 'package:my_portfolio/widgets/background.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: context.tr('titleWidgets'),
                onTap: () {
                  Navigator.of(context).pop();
                },
                margin: EdgeInsets.symmetric(
                  vertical: Paddings(context).padding_24,
                  horizontal: Paddings(context).mainPadding - Paddings(context).padding_16,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  Paddings(context).mainPadding,
                  0.0,
                  Paddings(context).mainPadding,
                  Paddings(context).mainPadding,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardVerticalCategory(),
                    CardHorizontalCategory(),
                    CardHorizontalSmallCategory(),
                    TitleClickableCategory(),
                    CircleImageCategory(),
                    TopBarCategory(),
                    LargeIconButtonCategory(),
                    AppDividerCategory(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
