import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/models/article_preview_model.dart';
import 'package:my_portfolio/utils/app_navigator.dart';
import 'package:my_portfolio/widgets/app_divider.dart';
import 'package:my_portfolio/widgets/background.dart';
import 'package:my_portfolio/widgets/card_horizontal.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class AllGridPage extends StatelessWidget {
  const AllGridPage({
    required this.articles,
    required this.title,
    super.key,
  });
  final List<ArticlePreviewModel> articles;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: title,
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
                child: StaggeredGrid.count(
                  crossAxisCount: Grids(context).gridAllPage,
                  mainAxisSpacing: Paddings(context).padding_24,
                  crossAxisSpacing: Paddings(context).padding_24,
                  children: List.generate(articles.length, (index) {
                    ArticlePreviewModel article = articles[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (index != 0) const AppDivider(),
                        CardHorizontal(
                          imagePath: article.imagePath,
                          vectorPath: article.vectorPath,
                          title: article.title,
                          description: article.description,
                          date: DateFormat('dd.M.yyyy').format(article.date),
                          onTap: () {
                            myPush(context, article.article);
                          },
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
