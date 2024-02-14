import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';

class LargeIconButton extends StatelessWidget {
  const LargeIconButton({
    required this.icon,
    required this.tooltip,
    super.key,
    this.onTap,
    this.margin = EdgeInsets.zero,
  });

  final IconData icon;
  final String tooltip;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Stack(
        children: [
          Material(
            color: AppColors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(Dimensions.buttonBorderRadius),
              splashColor: AppColors.selectionWhiteBackground,
              highlightColor: AppColors.selectionWhiteBackground,
              hoverColor: AppColors.selectionWhiteBackground,
              onTap: onTap,
              child: Container(
                margin: EdgeInsets.all(Paddings(context).padding_16),
                child: Tooltip(
                  message: tooltip,
                  child: Icon(
                    icon,
                    color: AppColors.iconColor,
                    size: Dimensions(context).icon24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
