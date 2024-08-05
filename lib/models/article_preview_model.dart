import 'package:flutter/material.dart';

class ArticlePreviewModel {
  ArticlePreviewModel({
    required this.title,
    required this.description,
    required this.date,
    required this.article,
    this.content,
    this.imagePath,
    this.vectorPath,
  });

  final String? imagePath;
  final String? vectorPath;
  final String title;
  final Widget article;

  /// [description] short text to describe the article
  final String description;
  final DateTime date;
  final List<Widget>? content;

  ArticlePreviewModel copyWith({
    String? imagePath,
    String? vectorPath,
    String? title,
    Widget? article,
    String? description,
    DateTime? date,
    List<Widget>? content,
  }) {
    return ArticlePreviewModel(
      imagePath: imagePath ?? this.imagePath,
      vectorPath: vectorPath ?? this.vectorPath,
      title: title ?? this.title,
      article: article ?? this.article,
      description: description ?? this.description,
      date: date ?? this.date,
      content: content ?? this.content,
    );
  }
}
