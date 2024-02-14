import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/widgets/app_divider.dart';
import 'package:my_portfolio/widgets/card_horizontal.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class HomePageFlutter extends StatelessWidget {
  const HomePageFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleClickable(
          title: context.tr('flutter'),
          vectorPath: VectorPaths.flutter,
          rightText: context.tr('showAll'),
          margin: EdgeInsets.only(
            bottom: Paddings(context).padding_8,
          ),
          onTap: () {
            // TODO
          },
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
            color: AppColors.cardOuterBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO ListViewBuilder + line separator + border radius
              CardHorizontal(
                imagePath: ImagePaths.myBackground,
                title: R.dummyTitle,
                description: R.dummyDescription,
                backgroundColor: AppColors.transparent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.cardOuterBorderRadius),
                  topRight: Radius.circular(Dimensions.cardOuterBorderRadius),
                ),
                onTap: () {},
              ),
              const AppDivider(),
              CardHorizontal(
                imagePath: ImagePaths.myBackground,
                title: R.dummyTitle,
                description: R.dummyDescription,
                backgroundColor: AppColors.transparent,
                borderRadius: BorderRadius.zero,
                onTap: () {},
              ),
              const AppDivider(),
              CardHorizontal(
                title: R.dummyTitle,
                description: R.dummyDescription,
                backgroundColor: AppColors.transparent,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(Dimensions.cardOuterBorderRadius),
                  bottomRight: Radius.circular(Dimensions.cardOuterBorderRadius),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
