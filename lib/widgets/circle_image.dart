import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    required this.onTap,
    super.key,
    this.imagePath,
    this.vectorPath,
    this.margin = EdgeInsets.zero,
  });

  final String? imagePath;
  final String? vectorPath;
  final GestureTapCallback onTap;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ClipOval(
        child: Stack(
          children: [
            if (imagePath != null)
              Image(
                image: AssetImage(imagePath!),
                width: Dimensions(context).cardHorizontalSmallImageSize,
                height: Dimensions(context).cardHorizontalSmallImageSize,
                fit: BoxFit.cover,
              ),
            if (vectorPath != null)
              SvgPicture.asset(
                vectorPath!,
                width: Dimensions(context).cardHorizontalSmallImageSize,
                height: Dimensions(context).cardHorizontalSmallImageSize,
                fit: BoxFit.cover,
              ),
            Positioned.fill(
              child: Material(
                color: AppColors.transparent,
                child: InkWell(
                  splashColor: AppColors.selectionBlackBackground,
                  highlightColor: AppColors.selectionBlackBackground,
                  hoverColor: AppColors.selectionBlackBackground,
                  onTap: onTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
