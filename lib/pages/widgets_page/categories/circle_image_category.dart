import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/circle_image.dart';

class CircleImageCategory {
  final String label = 'CircleImage';

  List<Widget> get widgets => [
        WidgetLabel(
          label: label,
          child: CircleImage(
            imagePath: ImagePaths.aboutMeBackground,
            onTap: () {},
          ),
        ),
        WidgetLabel(
          label: label,
          child: CircleImage(
            vectorPath: VectorPaths.linkedIn,
            onTap: () {},
          ),
        ),
      ];
}
