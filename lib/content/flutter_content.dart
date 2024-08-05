import 'package:flutter/material.dart';
import 'package:my_portfolio/models/article_preview_model.dart';

List<ArticlePreviewModel> top4FlutterArticles(BuildContext context) {
  List<ArticlePreviewModel> sorted = getFlutterArticles(context).toList()..sort((a, b) => b.date.compareTo(a.date));
  return sorted.take(4).toList();
}

List<ArticlePreviewModel> getFlutterArticles(BuildContext context) => [
      /*
      ArticlePreviewModel(
        title: 'Flutter',
        description:
            'Flutter is Google’s UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
        date: DateTime.parse('2024-02-28'),
        vectorPath: VectorPaths.nameDayApp,
      ),
      ArticlePreviewModel(
        title: "Projekty",
        description: 'Android widget aplikace pro zobrazování svátků a narozenin na ploše.',
        date: DateTime.parse('2024-02-28'),
        vectorPath: VectorPaths.nameDayApp,
      ),
*/
    ];
