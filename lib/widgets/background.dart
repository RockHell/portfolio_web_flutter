import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    this.child,
    this.imagePath,
  });

  final Widget? child;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return imagePath != null
        ? SizedBox.expand(
            child: Stack(
              children: [
                Image(
                  image: AssetImage(imagePath!),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                if (child != null) child!,
              ],
            ),
          )
        : Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [0.0, 1.0],
                colors: [
                  AppColors.backgroundGradientStart,
                  AppColors.backgroundGradientEnd,
                ],
              ),
            ),
            child: child,
          );
  }
}
