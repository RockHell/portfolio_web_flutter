import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/models/article_preview_model.dart';

List<ArticlePreviewModel> top4ProjectsArticles(BuildContext context) {
  List<ArticlePreviewModel> sorted = _getArticles(context).toList()..sort((a, b) => b.date.compareTo(a.date));
  return sorted.take(4).toList();
}

List<ArticlePreviewModel> _getArticles(BuildContext context) => [
      ArticlePreviewModel(
        title: 'petrskovsky.cz',
        description: context.tr('petrskovskyCzDescription'),
        date: DateTime.parse('2024-02-28'),
        // TODO Icon
        vectorPath: VectorPaths.nameDayApp,
      ),
      ArticlePreviewModel(
        title: context.tr('nameDayApp'),
        description: context.tr('nameDayAppDescription'),
        date: DateTime.parse('2024-02-28'),
        vectorPath: VectorPaths.nameDayApp,
      ),
    ];
