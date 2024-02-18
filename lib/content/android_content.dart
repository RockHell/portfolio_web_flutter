import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/models/article_preview_model.dart';

List<ArticlePreviewModel> top4AndroidArticles() {
  List<ArticlePreviewModel> sorted = _articles.toList()..sort((a, b) => b.date.compareTo(a.date));
  return sorted.take(4).toList();
}

final List<ArticlePreviewModel> _articles = [
  ArticlePreviewModel(
    title: 'Android 1',
    description: 'Flutter is Google’s UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    date: DateTime.now().add(const Duration(days: 1)),
    vectorPath: VectorPaths.nameDayApp,
  ),
  ArticlePreviewModel(
    title: 'Android 2',
    description: 'Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference.',
    date: DateTime.now().add(const Duration(days: 2)),
    imagePath: ImagePaths.myBackground,
  ),
  ArticlePreviewModel(
    title: 'Android 3',
    description: 'Android Studio is the official integrated development environment for Google’s Android operating system.',
    date: DateTime.now().add(const Duration(days: 4)),
  ),
  ArticlePreviewModel(
    title: 'Android 4',
    description: 'Firebase is a platform developed by Google for creating mobile and web applications.',
    date: DateTime.now().add(const Duration(days: 3)),
    imagePath: ImagePaths.myBackground,
  ),
  ArticlePreviewModel(
    title: 'Android 5',
    description: 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software.',
    date: DateTime.now().add(const Duration(days: 5)),
    vectorPath: VectorPaths.android,
  ),
  ArticlePreviewModel(
    title: 'Android 6',
    description: 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software.',
    date: DateTime.now().add(const Duration(days: 6)),
    vectorPath: VectorPaths.android,
  ),
];
