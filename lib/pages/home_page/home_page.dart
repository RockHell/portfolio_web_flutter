import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_android.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_design.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_flutter.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_other.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_projects.dart';
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
                    mainAxisSpacing: Paddings(context).padding_48,
                    crossAxisSpacing: Paddings(context).padding_24,
                    children: const [
                      HomePageFlutter(),
                      HomePageProjects(),
                      HomePageAndroid(),
                      HomePageDesign(),
                      HomePageOther(),
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
