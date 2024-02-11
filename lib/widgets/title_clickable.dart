import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class TitleClickable extends StatelessWidget {
  const TitleClickable({
    super.key,
    required this.title,
    this.vectorPath,
    this.rightText,
    this.onTap,
    this.margin = EdgeInsets.zero,
  });

  final String title;
  final String? vectorPath;
  final String? rightText;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (vectorPath != null)
            Padding(
              padding: EdgeInsets.only(
                left: Paddings.of(context).padding_16,
                top: Paddings.of(context).padding_8,
                bottom: Paddings.of(context).padding_8,
              ),
              child: SvgPicture.asset(
                vectorPath!,
                width: Dimensions.of(context).icon40,
                height: Dimensions.of(context).icon40,
                fit: BoxFit.cover,
              ),
            ),
          Expanded(
            child: AppText(
              title,
              fontWeight: FontWeight.bold,
              textSize: Dimensions.of(context).text18,
              padding: vectorPath != null
                  ? EdgeInsets.all(Paddings.of(context).padding_4)
                  : EdgeInsets.all(Paddings.of(context).padding_16),
            ),
          ),
          if (rightText != null && onTap != null)
            Material(
              color: AppColors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
                splashColor: AppColors.selectionWhiteBackground,
                highlightColor: AppColors.selectionWhiteBackground,
                hoverColor: AppColors.selectionWhiteBackground,
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(Paddings.of(context).padding_16),
                  child: AppText(
                    rightText!,
                    fontWeight: FontWeight.w500,
                    textSize: Dimensions.of(context).text14,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
