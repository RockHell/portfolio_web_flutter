import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class CardHorizontalSmall extends StatelessWidget {
  const CardHorizontalSmall({
    required this.title,
    super.key,
    this.imagePath,
    this.vectorPath,
    this.backgroundColor = AppColors.cardOuterBackground,
    this.onTap,
    this.margin = EdgeInsets.zero,
    this.borderRadius,
  });

  final String? imagePath;
  final String? vectorPath;
  final String title;
  final Color backgroundColor;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry margin;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Material(
        color: AppColors.transparent,
        child: InkWell(
          borderRadius: borderRadius ?? BorderRadius.circular(Dimensions.cardOuterBorderRadius),
          splashColor: AppColors.selectionWhiteBackground,
          highlightColor: AppColors.selectionWhiteBackground,
          hoverColor: AppColors.selectionWhiteBackground,
          onTap: onTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(Dimensions.cardOuterBorderRadius),
              color: backgroundColor,
            ),
            child: Row(
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
                            width: Dimensions(context).cardHorizontalImageSize,
                            height: Dimensions(context).cardHorizontalImageSize,
                            fit: BoxFit.cover,
                          ),
                        if (vectorPath != null)
                          SvgPicture.asset(
                            vectorPath!,
                            width: Dimensions(context).cardHorizontalImageSize,
                            height: Dimensions(context).cardHorizontalImageSize,
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
                    constraints: BoxConstraints(
                      minHeight: Dimensions(context).cardHorizontalImageSize,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText(
                        title,
                        fontWeight: FontWeight.bold,
                        textSize: Dimensions(context).text14,
                        padding: EdgeInsets.symmetric(horizontal: Paddings(context).padding_16),
                        textOverflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
                if (onTap != null)
                  Padding(
                    padding: EdgeInsets.only(right: Paddings(context).padding_16),
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.iconColor,
                      size: Dimensions(context).icon20,
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
