import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/common/grids.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: Grids.of(context).homepageColumns,
              mainAxisSpacing: Paddings.of(context).padding_16,
              crossAxisSpacing: Paddings.of(context).padding_16,
              children: const [],
            ),
          ),
        ],
      ),
    );
  }
}
