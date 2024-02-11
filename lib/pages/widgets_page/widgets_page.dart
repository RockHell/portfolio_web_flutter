import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card1_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card2_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/card3_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/circle_image_category.dart';
import 'package:my_portfolio/pages/widgets_page/categories/title_clickable_category.dart';
import 'package:my_portfolio/utils/screen_size_handler.dart';
import 'package:my_portfolio/widgets/background.dart';

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
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Paddings.of(context).padding_48),
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
                    children: const [
                      Card1Category(),
                      Card2Category(),
                      Card3Category(),
                      TitleClickableCategory(),
                      CircleImageCategory(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
