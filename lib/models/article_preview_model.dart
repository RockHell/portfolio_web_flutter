import 'package:flutter/material.dart';

class ArticlePreviewModel {
  ArticlePreviewModel({
    required this.title,
    required this.description,
    required this.date,
    this.content,
    this.imagePath,
    this.vectorPath,
  });

  final String? imagePath;
  final String? vectorPath;
  final String title;

  /// [description] short text to describe the article
  final String description;
  final DateTime date;
  final List<Widget>? content;

  ArticlePreviewModel copyWith({
    String? imagePath,
    String? vectorPath,
    String? title,
    String? description,
    DateTime? date,
    List<Widget>? content,
  }) {
    return ArticlePreviewModel(
      imagePath: imagePath ?? this.imagePath,
      vectorPath: vectorPath ?? this.vectorPath,
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      content: content ?? this.content,
    );
  }
}
