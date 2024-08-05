import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/models/article_preview_model.dart';
import 'package:my_portfolio/widgets/card_horizontal_small.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class HomePageCardHorizontalSmall extends StatelessWidget {
  const HomePageCardHorizontalSmall({
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
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            ArticlePreviewModel article = articles[index];
            return CardHorizontalSmall(
              imagePath: article.imagePath,
              vectorPath: article.vectorPath,
              title: article.title,
              onTap: () {
                // TODO
              },
              margin: index < articles.length -1 ? EdgeInsets.only(
                bottom: Paddings(context).padding_16,
              ) : EdgeInsets.zero,
            );
          },
        ),
      ],
    );
  }
}
