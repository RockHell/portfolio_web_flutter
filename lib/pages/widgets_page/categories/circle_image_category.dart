import 'package:flutter/material.dart';
import 'package:my_portfolio/common/image_paths.dart';
import 'package:my_portfolio/common/vector_paths.dart';
import 'package:my_portfolio/pages/widgets_page/widgets/widget_label.dart';
import 'package:my_portfolio/widgets/circle_image.dart';

class CircleImageCategory extends StatelessWidget {
  const CircleImageCategory({
    super.key,
  });

  final String label = 'CircleImage';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetLabel(
          label: label,
          child: CircleImage(
            imagePath: ImagePaths.myBackground,
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
      ],
    );
  }
}
