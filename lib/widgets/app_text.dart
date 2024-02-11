import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/constants.dart';
import 'package:my_portfolio/common/dimensions.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    Key? key,
    this.textColor = AppColors.header,
    this.textSize,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.padding,
    this.maxLines,
    this.textOverflow,
    this.centerText,
    this.textLineHeight = 1.25,
  }) : super(key: key);

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

  /// [centerText] - Uses Center widget to position TextS widget in the center of available width
  ///
  /// default/null => false
  final bool? centerText;

  @override
  Widget build(BuildContext context) {
    Widget textWidget = Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: textLineHeight,
          color: textColor,
          fontFamily: Constants.fontFamily,
          fontSize: textSize ?? Dimensions.of(context).text14,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
        ),
      ),
    );

    return (centerText ?? false)
        ? Center(
            child: textWidget,
          )
        : textWidget;
  }
}
