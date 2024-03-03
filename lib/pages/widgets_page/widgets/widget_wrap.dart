import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';

class WidgetWrap extends StatelessWidget {
  const WidgetWrap({
    required this.child,
    this.isLast = false,
    super.key,
  });

  final Widget child;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 300.0,
      ),
      margin: isLast
          ? EdgeInsets.zero
          : EdgeInsets.only(
              bottom: Paddings(context).padding_24,
              right: Paddings(context).padding_24,
            ),
      child: child,
    );
  }
}
