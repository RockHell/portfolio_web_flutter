import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    required this.title,
    super.key,
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
        children: [
          if (onTap != null)
            Padding(
              padding: EdgeInsets.only(right: Paddings(context).padding_16),
              child: Material(
                color: AppColors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(Dimensions.cardOuterBorderRadius),
                  splashColor: AppColors.selectionWhiteBackground,
                  highlightColor: AppColors.selectionWhiteBackground,
                  hoverColor: AppColors.selectionWhiteBackground,
                  onTap: onTap,
                  child: Padding(
                    padding: EdgeInsets.all(Paddings(context).padding_16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.iconColor,
                        size: Dimensions(context).icon24,
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
              textSize: Dimensions(context).text20,
            ),
          ),
        ],
      ),
    );
  }
}
