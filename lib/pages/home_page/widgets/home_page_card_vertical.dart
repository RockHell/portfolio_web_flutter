import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/models/article_preview_model.dart';
import 'package:my_portfolio/widgets/card_vertical.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class HomePageCardVertical extends StatelessWidget {
  const HomePageCardVertical({
    required this.title,
    required this.articles,
    required this.onTap,
    this.titleVectorPath,
    this.rightText,
    super.key,
  });

  final String title;
  final String? titleVectorPath;
  final String? rightText;
  final List<ArticlePreviewModel> articles;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleClickable(
          title: title,
          vectorPath: titleVectorPath,
          rightText: rightText ?? "Zobrazit vše",
          margin: EdgeInsets.only(
            bottom: Paddings(context).padding_8,
          ),
          onTap: onTap,
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return StaggeredGrid.count(
              crossAxisCount: Grids.gridHomeProjects(constraints.maxWidth),
              mainAxisSpacing: Paddings(context).padding_16,
              crossAxisSpacing: Paddings(context).padding_16,
              children: articles.map((article) {
                return CardVertical(
                  imagePath: article.imagePath,
                  vectorPath: article.vectorPath,
                  title: article.title,
                  description: article.description,
                  date: DateFormat('dd.M.yyyy').format(article.date),
                  onTap: () {
                    // TODO
                  },
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
