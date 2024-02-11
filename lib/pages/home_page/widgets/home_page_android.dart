import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/widgets/card_horizontal.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class HomePageAndroid extends StatelessWidget {
  const HomePageAndroid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardOuterBackground,
        borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleClickable(
            title: context.tr('android'),
            vectorPath: VectorPaths.android,
            rightText: context.tr('showAll'),
            onTap: () {
              // TODO
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Paddings.of(context).padding_8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO ListViewBuilder
                CardHorizontal(
                  imagePath: ImagePaths.myBackground,
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  onTap: () {},
                  margin: EdgeInsets.symmetric(
                    vertical: Paddings.of(context).padding_8,
                    horizontal: Paddings.of(context).padding_16,
                  ),
                ),
                CardHorizontal(
                  imagePath: ImagePaths.myBackground,
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  onTap: () {},
                  margin: EdgeInsets.symmetric(
                    vertical: Paddings.of(context).padding_8,
                    horizontal: Paddings.of(context).padding_16,
                  ),
                ),
                CardHorizontal(
                  title: R.dummyTitle,
                  description: R.dummyDescription,
                  onTap: () {},
                  margin: EdgeInsets.symmetric(
                    vertical: Paddings.of(context).padding_8,
                    horizontal: Paddings.of(context).padding_16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
