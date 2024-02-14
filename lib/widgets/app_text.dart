import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/r.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.textColor = AppColors.header,
    this.textSize,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.padding,
    this.maxLines,
    this.textOverflow,
    this.textLineHeight = 1.25,
  });

  final String text;
  final Color textColor;
  final double? textSize;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final double textLineHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: textLineHeight,
          color: textColor,
          fontFamily: R.fontFamily,
          fontSize: textSize ?? Dimensions(context).text14,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}
