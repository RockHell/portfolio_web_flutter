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
                title: "O mně",
                onTap: () {
                  Navigator.of(context).pop();
                },
                margin: EdgeInsets.symmetric(
                  vertical: Paddings(context).padding_24,
                  horizontal: Paddings(context).mainPadding - Paddings(context).padding_16,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  Paddings(context).mainPadding,
                  0.0,
                  Paddings(context).mainPadding,
                  Paddings(context).mainPadding,
                ),
                child: Center(
                  child: Container(
                    width: double.infinity,
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
