import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class CardHorizontalSmall extends StatelessWidget {
  const CardHorizontalSmall({
    super.key,
    this.imagePath,
    this.vectorPath,
    required this.title,
    this.onTap,
    this.margin = EdgeInsets.zero,
  });

  final String? imagePath;
  final String? vectorPath;
  final String title;
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
              color: AppColors.cardOuterBackground,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (imagePath != null || vectorPath != null)
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.cardOuterBorderRadius),
                      bottomLeft: Radius.circular(Dimensions.cardOuterBorderRadius),
                    ),
                    child: Stack(
                      children: [
                        if (imagePath != null)
                          Image(
                            image: AssetImage(imagePath!),
                            width: Dimensions.of(context).cardHorizontalSmallImageSize,
                            height: Dimensions.of(context).cardHorizontalSmallImageSize,
                            fit: BoxFit.cover,
                          ),
                        if (vectorPath != null)
                          SvgPicture.asset(
                            vectorPath!,
                            width: Dimensions.of(context).cardHorizontalSmallImageSize,
                            height: Dimensions.of(context).cardHorizontalSmallImageSize,
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
                Expanded(
                  child: Container(
                    height: Dimensions.of(context).cardHorizontalSmallImageSize,
                    padding: EdgeInsets.only(left: Paddings.of(context).padding_16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          title,
                          fontWeight: FontWeight.bold,
                          textSize: Dimensions.of(context).text14,
                          padding: EdgeInsets.only(right: Paddings.of(context).padding_16),
                          textOverflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                if (onTap != null)
                  Padding(
                    padding: EdgeInsets.only(right: Paddings.of(context).padding_16),
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.iconColor,
                      size: Dimensions.of(context).icon20,
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
