import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_wrap.dart';
import 'package:my_portfolio/widgets/circle_image.dart';

class CircleImageCategory extends StatelessWidget {
  const CircleImageCategory({
    super.key,
  });

  String get label => 'CircleImage';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Paddings(context).padding_48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetLabel(
            label: label,
          ),
          Wrap(
            children: [
              WidgetWrap(
                child: CircleImage(
                  imagePath: ImagePaths.aboutMeBackground,
                  onTap: () {},
                ),
              ),
              WidgetWrap(
                isLast: true,
                child: CircleImage(
                  vectorPath: VectorPaths.linkedIn,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
