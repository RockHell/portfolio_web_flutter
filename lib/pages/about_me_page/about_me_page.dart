import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';
import 'package:my_portfolio/widgets/background.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        imagePath: ImagePaths.aboutMeBackground,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: context.tr('aboutMe'),
                onTap: () {
                  Navigator.of(context).pop();
                },
                margin: EdgeInsets.all(Paddings(context).padding_24),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Paddings(context).padding_48,
                ),
                child: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
                      color: AppColors.cardOuterBackground,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // TODO
                        AppText("TODO: about me content"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
