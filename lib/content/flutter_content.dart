import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/models/article_preview_model.dart';

List<ArticlePreviewModel> top4FlutterArticles() {
  List<ArticlePreviewModel> sorted = _articles.toList()..sort((a, b) => b.date.compareTo(a.date));
  return sorted.take(4).toList();
}

final List<ArticlePreviewModel> _articles = [
  ArticlePreviewModel(
    title: 'Flutter',
    description: 'Flutter is Google’s UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    date: DateTime.now().add(const Duration(days: 1)),
    vectorPath: VectorPaths.nameDayApp,
  ),
  ArticlePreviewModel(
    title: 'Kotlin',
    description: 'Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference.',
    date: DateTime.now().add(const Duration(days: 2)),
    imagePath: ImagePaths.myBackground,
  ),
  ArticlePreviewModel(
    title: 'Android Studio',
    description: 'Android Studio is the official integrated development environment for Google’s Android operating system.',
    date: DateTime.now().add(const Duration(days: 4)),
  ),
  ArticlePreviewModel(
    title: 'Firebase',
    description: 'Firebase is a platform developed by Google for creating mobile and web applications.',
    date: DateTime.now().add(const Duration(days: 3)),
    imagePath: ImagePaths.myBackground,
  ),
  ArticlePreviewModel(
    title: 'Android',
    description: 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software.',
    date: DateTime.now().add(const Duration(days: 5)),
    vectorPath: VectorPaths.android,
  ),
  ArticlePreviewModel(
    title: 'Android',
    description: 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software.',
    date: DateTime.now().add(const Duration(days: 6)),
    vectorPath: VectorPaths.android,
  ),
];
