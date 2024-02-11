import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/pages/home_page/widgets/home_page_layout.dart';
import 'package:my_portfolio/pages/home_page/widgets/main_bar.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Paddings.of(context).padding_48,
                    ),
                    child: const SizedBox(
                      width: double.infinity,
                      child: HomePageLayout(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
