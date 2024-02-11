import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card_horizontal_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card_horizontal_small_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card_vertical_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/circle_image_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/large_icon_button_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/title_clickable_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/top_bar_category.dart';
import 'package:my_portfolio/utils/screen_size_handler.dart';
import 'package:my_portfolio/widgets/background.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: context.tr('titleWidgets'),
                onTap: () {
                  Navigator.of(context).pop();
                },
                margin: EdgeInsets.symmetric(
                  horizontal: Paddings.of(context).padding_48,
                  vertical: Paddings.of(context).padding_12,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      Paddings.of(context).padding_48,
                      0.0,
                      Paddings.of(context).padding_48,
                      Paddings.of(context).padding_48,
                    ),
                    child: Center(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: context.numberOf300Px <= 1 ? 300 : double.infinity,
                        ),
                        width: double.infinity,
                        child: StaggeredGrid.count(
                          crossAxisCount: Grids.of(context).grid300Px,
                          mainAxisSpacing: Paddings.of(context).padding_48,
                          crossAxisSpacing: Paddings.of(context).padding_48,
                          children: [
                            ...CardVerticalCategory().widgets,
                            ...CardHorizontalCategory().widgets,
                            ...CardHorizontalSmallCategory().widgets,
                            ...TitleClickableCategory().widgets,
                            ...CircleImageCategory().widgets,
                            ...TopBarCategory().widgets,
                            ...LargeIconButtonCategory().widgets,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
