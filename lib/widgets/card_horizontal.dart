import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class CardHorizontal extends StatelessWidget {
  const CardHorizontal({
    super.key,
    this.imagePath,
    this.vectorPath,
    required this.title,
    required this.description,
    this.onTap,
    this.margin = EdgeInsets.zero,
  });

  final String? imagePath;
  final String? vectorPath;
  final String title;
  final String description;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Material(
        color: AppColors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
          splashColor: AppColors.selectionWhiteBackground,
          highlightColor: AppColors.selectionWhiteBackground,
          hoverColor: AppColors.selectionWhiteBackground,
          onTap: onTap,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
              color: AppColors.cardOuterBackground,
            ),
            padding: EdgeInsets.all(Paddings.of(context).padding_16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (imagePath != null || vectorPath != null)
                  Padding(
                    padding: EdgeInsets.only(right: Paddings.of(context).padding_16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Dimensions.cardInnerBorderRadius),
                      child: Stack(
                        children: [
                          if (imagePath != null)
                            Image(
                              image: AssetImage(imagePath!),
                              width: Dimensions.of(context).cardHorizontalImageSize,
                              height: Dimensions.of(context).cardHorizontalImageSize,
                              fit: BoxFit.cover,
                            ),
                          if (vectorPath != null)
                            SvgPicture.asset(
                              vectorPath!,
                              width: Dimensions.of(context).cardHorizontalImageSize,
                              height: Dimensions.of(context).cardHorizontalImageSize,
                              fit: BoxFit.cover,
                            ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [Colors.white.withOpacity(0.1), Colors.white.withOpacity(0)],
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.black.withOpacity(0.1), Colors.black.withOpacity(0)],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        title,
                        fontWeight: FontWeight.bold,
                        textSize: Dimensions.of(context).text14,
                      ),
                      AppText(
                        description,
                        textSize: Dimensions.of(context).text12,
                        textColor: AppColors.paragraph,
                        padding: EdgeInsets.only(
                          top: Paddings.of(context).padding_12,
                          bottom: Paddings.of(context).padding_12,
                        ),
                      ),
                      if (onTap != null)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.iconColor,
                          size: Dimensions.of(context).icon20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
