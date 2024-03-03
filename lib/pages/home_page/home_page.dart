import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/content/android_content.dart';
import 'package:my_portfolio/content/design_content.dart';
import 'package:my_portfolio/content/flutter_content.dart';
import 'package:my_portfolio/content/other_content.dart';
import 'package:my_portfolio/content/projects_content.dart';
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
                  Paddings(context).mainPadding,
                  0.0,
                  Paddings(context).mainPadding,
                  Paddings(context).mainPadding,
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
                        articles: top4FlutterArticles(context),
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardVertical(
                        title: context.tr('projects'),
                        articles: top4ProjectsArticles(context),
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardHorizontal(
                        title: context.tr('android'),
                        titleVectorPath: VectorPaths.android,
                        articles: top4AndroidArticles(context),
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardHorizontal(
                        title: context.tr('design'),
                        articles: top4DesignArticles(context),
                        onTap: () {
                          // TODO
                        },
                      ),
                      HomePageCardHorizontalSmall(
                        title: context.tr('other'),
                        articles: top4OtherArticles(context),
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
