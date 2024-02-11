import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class TitleClickable extends StatelessWidget {
  const TitleClickable({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
        splashColor: AppColors.selectionWhiteBackground,
        highlightColor: AppColors.selectionWhiteBackground,
        hoverColor: AppColors.selectionWhiteBackground,
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(Paddings.of(context).padding_16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: AppText(
                  title,
                  fontWeight: FontWeight.bold,
                  textSize: Dimensions.of(context).text18,
                  padding: EdgeInsets.only(right: Paddings.of(context).padding_16),
                ),
              ),
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
      ),
    );
  }
}
