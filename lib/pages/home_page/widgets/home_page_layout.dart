import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_android.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_design.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_flutter.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_other.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_projects.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO
    return StaggeredGrid.count(
      crossAxisCount: Grids.of(context).grid400Px,
      mainAxisSpacing: Paddings.of(context).padding_24,
      crossAxisSpacing: Paddings.of(context).padding_24,
      children: const [
        HomePageFlutter(),
        HomePageProjects(),
        HomePageAndroid(),
        HomePageOther(),
        HomePageDesign(),
      ],
    );
  }
}
