import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.title,
    this.onTap,
    this.margin = EdgeInsets.zero,
  });

  final String title;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (onTap != null)
            Padding(
              padding: EdgeInsets.only(right: Paddings.of(context).padding_16),
              child: Material(
                color: AppColors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
                  splashColor: AppColors.selectionWhiteBackground,
                  highlightColor: AppColors.selectionWhiteBackground,
                  hoverColor: AppColors.selectionWhiteBackground,
                  onTap: onTap,
                  child: Padding(
                    padding: EdgeInsets.all(Paddings.of(context).padding_16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.iconColor,
                        size: Dimensions.of(context).icon24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Flexible(
            child: AppText(
              title,
              fontWeight: FontWeight.bold,
              textSize: Dimensions.of(context).text20,
            ),
          ),
        ],
      ),
    );
  }
}
