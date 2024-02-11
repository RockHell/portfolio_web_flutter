import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';

class Card3 extends StatelessWidget {
  const Card3({
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
            padding: EdgeInsets.all(Paddings.of(context).padding_16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (imagePath != null || vectorPath != null)
                  Padding(
                    padding: EdgeInsets.only(right: Paddings.of(context).padding_16),
                    child: ClipOval(
                      child: Stack(
                        children: [
                          if (imagePath != null)
                            Image(
                              image: AssetImage(imagePath!),
                              width: Dimensions.of(context).card3ImageSize,
                              height: Dimensions.of(context).card3ImageSize,
                              fit: BoxFit.cover,
                            ),
                          if (vectorPath != null)
                            SvgPicture.asset(
                              vectorPath!,
                              width: Dimensions.of(context).card3ImageSize,
                              height: Dimensions.of(context).card3ImageSize,
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
                  child: AppText(
                    title,
                    fontWeight: FontWeight.bold,
                    textSize: Dimensions.of(context).text14,
                    padding: EdgeInsets.only(right: Paddings.of(context).padding_16),
                  ),
                ),
                if (onTap != null)
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.header,
                    size: Dimensions.of(context).icon20,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
