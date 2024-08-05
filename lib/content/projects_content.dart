import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/content/projects_articles/name_day_app_article.dart';
import 'package:my_portfolio/models/article_preview_model.dart';

List<ArticlePreviewModel> top4ProjectsArticles(BuildContext context) {
  List<ArticlePreviewModel> sorted = getProjectsArticles(context).toList()..sort((a, b) => b.date.compareTo(a.date));
  return sorted.take(4).toList();
}

List<ArticlePreviewModel> getProjectsArticles(BuildContext context) => [
  /*
      ArticlePreviewModel(
        title: 'petrskovsky.cz',
        description: "Osobní web jako Flutter aplikace.",
        date: DateTime.parse('2024-02-28'),
        // TODO Icon
        vectorPath: VectorPaths.nameDayApp,
      ),
   */
      ArticlePreviewModel(
        title: "Svátky a narozeniny widget",
        description: "Android widget aplikace pro zobrazování svátků a narozenin na ploše.",
        date: DateTime.parse('2024-08-06'),
        vectorPath: VectorPaths.nameDayApp,
        article: const NameDayAppArticle(),
      ),
    ];
