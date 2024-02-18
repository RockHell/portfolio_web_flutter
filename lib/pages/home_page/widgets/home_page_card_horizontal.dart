import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/models/article_preview_model.dart';
import 'package:my_portfolio/widgets/app_divider.dart';
import 'package:my_portfolio/widgets/card_horizontal.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class HomePageCardHorizontal extends StatelessWidget {
  const HomePageCardHorizontal({
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
          rightText: rightText ?? context.tr('showAll'),
          margin: EdgeInsets.only(
            bottom: Paddings(context).padding_8,
          ),
          onTap: onTap,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
            color: AppColors.cardOuterBackground,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: articles.length,
            itemBuilder: (context, index) {
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
                    backgroundColor: AppColors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: index == 0
                          ? const Radius.circular(
                              Dimensions.cardOuterBorderRadius,
                            )
                          : Radius.zero,
                      topRight: index == 0
                          ? const Radius.circular(
                              Dimensions.cardOuterBorderRadius,
                            )
                          : Radius.zero,
                      bottomLeft: index == articles.length - 1
                          ? const Radius.circular(
                              Dimensions.cardOuterBorderRadius,
                            )
                          : Radius.zero,
                      bottomRight: index == articles.length - 1
                          ? const Radius.circular(
                              Dimensions.cardOuterBorderRadius,
                            )
                          : Radius.zero,
                    ),
                    onTap: () {
                      // TODO
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
