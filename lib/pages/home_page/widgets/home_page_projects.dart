import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleClickable(
          title: context.tr('projects'),
          rightText: context.tr('showAll'),
          margin: EdgeInsets.only(
            bottom: Paddings(context).padding_8,
          ),
          onTap: () {
            // TODO
          },
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return StaggeredGrid.count(
              crossAxisCount: Grids.gridHomeProjects(constraints.maxWidth),
              mainAxisSpacing: Paddings(context).padding_16,
              crossAxisSpacing: Paddings(context).padding_16,
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
            );
          },
        ),
      ],
    );
  }
}
