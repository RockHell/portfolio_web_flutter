import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class CardVertical extends StatelessWidget {
  const CardVertical({
    required this.title,
    required this.description,
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
  final String description;
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
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(Dimensions.cardOuterBorderRadius),
              color: backgroundColor,
            ),
            padding: EdgeInsets.all(Paddings(context).padding_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (imagePath != null || vectorPath != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: Paddings(context).padding_16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Dimensions.cardInnerBorderRadius),
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Stack(
                          children: [
                            if (imagePath != null)
                              Image(
                                image: AssetImage(imagePath!),
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            if (vectorPath != null)
                              SvgPicture.asset(
                                vectorPath!,
                                width: double.infinity,
                                height: double.infinity,
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
                  ),
                AppText(
                  title,
                  fontWeight: FontWeight.bold,
                  textSize: Dimensions(context).text14,
                ),
                AppText(
                  description,
                  textSize: Dimensions(context).text12,
                  textColor: AppColors.paragraph,
                  padding: EdgeInsets.only(
                    top: Paddings(context).padding_12,
                    bottom: Paddings(context).padding_12,
                  ),
                ),
                if (onTap != null)
                  Align(
                    alignment: Alignment.bottomRight,
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
