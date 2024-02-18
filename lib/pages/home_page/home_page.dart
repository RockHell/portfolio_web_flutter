import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/content/android_content.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_card_horizontal.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_card_horizontal_small.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_card_vertical.dart';
import 'package:my_portfolio/pages/home_page/widgets/main_bar.dart';
import 'package:my_portfolio/widgets/background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MainBar(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  Paddings(context).homepageMainPadding,
                  0.0,
                  Paddings(context).homepageMainPadding,
                  Paddings(context).homepageMainPadding,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: StaggeredGrid.count(
                    crossAxisCount: Grids(context).gridHomePage,
                    mainAxisSpacing: Paddings(context).padding_24,
                    crossAxisSpacing: Paddings(context).padding_24,
                    children: [
                      HomePageCardHorizontal(
                        title: context.tr('flutter'),
                        titleVectorPath: VectorPaths.flutter,
                        // TODO Flutter articles
                        // TODO Sort by date
                        articles: AndroidContent().androidArticles,
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardVertical(
                        title: context.tr('projects'),
                        // TODO Flutter articles
                        articles: AndroidContent().androidArticles,
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardHorizontal(
                        title: context.tr('android'),
                        titleVectorPath: VectorPaths.android,
                        articles: AndroidContent().androidArticles,
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardHorizontal(
                        title: context.tr('design'),
                        // TODO Design articles
                        articles: AndroidContent().androidArticles,
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardHorizontalSmall(
                        title: context.tr('other'),
                        // TODO Design articles
                        articles: AndroidContent().androidArticles,
                        onTap: () {
                          // TODO
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
