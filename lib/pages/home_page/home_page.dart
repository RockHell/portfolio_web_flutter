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
import 'package:my_portfolio/pages/all_grid/all_grid_page.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_card_horizontal.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_card_horizontal_small.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_card_vertical.dart';
import 'package:my_portfolio/pages/home_page/widgets/main_bar.dart';
import 'package:my_portfolio/utils/app_navigator.dart';
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
                        title: "Flutter",
                        titleVectorPath: VectorPaths.flutter,
                        articles: top4FlutterArticles(context),
                        onTap: () {
                          myPush(
                            context,
                            AllGridPage(
                              articles: getFlutterArticles(context),
                              title: "Flutter",
                            ),
                          );
                        },
                      ),
                      HomePageCardVertical(
                        title: "Projekty",
                        articles: top4ProjectsArticles(context),
                        onTap: () {
                          myPush(
                            context,
                            AllGridPage(
                              articles: getProjectsArticles(context),
                              title: "Projekty",
                            ),
                          );
                        },
                      ),
                      HomePageCardHorizontal(
                        title: "Android",
                        titleVectorPath: VectorPaths.android,
                        articles: top4AndroidArticles(context),
                        onTap: () {
                          myPush(
                            context,
                            AllGridPage(
                              articles: getAndroidArticles(context),
                              title: "Android",
                            ),
                          );
                        },
                      ),
                      HomePageCardHorizontal(
                        title: "Design",
                        articles: top4DesignArticles(context),
                        onTap: () {
                          myPush(
                            context,
                            AllGridPage(
                              articles: getDesignArticles(context),
                              title: "Design",
                            ),
                          );
                        },
                      ),
                      HomePageCardHorizontalSmall(
                        title: "Ostatní",
                        articles: top4OtherArticles(context),
                        onTap: () {
                          myPush(
                            context,
                            AllGridPage(
                              articles: getOtherArticles(context),
                              title: "Ostatní",
                            ),
                          );
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
