import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/widgets/card_vertical.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class HomePageProjects extends StatelessWidget {
  const HomePageProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardOuterBackground,
        borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleClickable(
            title: context.tr('projects'),
            rightText: context.tr('showAll'),
            onTap: () {
              // TODO
            },
          ),
          Padding(
            padding: EdgeInsets.all(Paddings.of(context).padding_16),
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: Paddings.of(context).padding_16,
              crossAxisSpacing: Paddings.of(context).padding_16,
              children: [
                // TODO ListViewBuilder
                CardVertical(
                  imagePath: ImagePaths.myBackground,
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  onTap: () {},
                ),
                CardVertical(
                  vectorPath: VectorPaths.svatkyApp,
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  onTap: () {},
                ),
                CardVertical(
                  imagePath: ImagePaths.myBackground,
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  onTap: () {},
                ),
                CardVertical(
                  vectorPath: VectorPaths.svatkyApp,
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
