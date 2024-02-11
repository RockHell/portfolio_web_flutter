import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/app_image_assets.dart';
import 'package:my_portfolio/common/app_vector_assets.dart';
import 'package:my_portfolio/common/dimensions.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/app_text.dart';
import 'package:my_portfolio/widgets/background.dart';
import 'package:my_portfolio/widgets/card_1.dart';
import 'package:my_portfolio/widgets/card_2.dart';
import 'package:my_portfolio/widgets/card_3.dart';
import 'package:my_portfolio/widgets/circle_image.dart';
import 'package:my_portfolio/widgets/title_clickable.dart';

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(Paddings.of(context).mainBackgroundPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Card1',
                      textSize: Dimensions.of(context).text18,
                      textColor: AppColors.paragraph,
                      fontWeight: FontWeight.bold,
                      padding: EdgeInsets.only(bottom: Paddings.of(context).padding_8),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_24),
                      child: Card1(
                        imagePath: AppImageAssets.myBackground,
                        title: 'Svátky a narozeniny widget',
                        description:
                            'Vytvořte si widget dle vlastní volby a mějte přehled o svátcích, narozeninách a vašich událostech.',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_24),
                      child: Card1(
                        vectorPath: AppVectorAssets.svatkyApp,
                        title: 'Svátky a narozeniny widget',
                        description:
                            'Vytvořte si widget dle vlastní volby a mějte přehled o svátcích, narozeninách a vašich událostech.',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_72),
                      child: Card1(
                        title: 'Svátky a narozeniny widget',
                        description:
                            'Vytvořte si widget dle vlastní volby a mějte přehled o svátcích, narozeninách a vašich událostech.',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    AppText(
                      'Card2',
                      textSize: Dimensions.of(context).text18,
                      textColor: AppColors.paragraph,
                      fontWeight: FontWeight.bold,
                      padding: EdgeInsets.only(bottom: Paddings.of(context).padding_8),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_24),
                      child: Card2(
                        imagePath: AppImageAssets.myBackground,
                        title: 'Svátky a narozeniny widget',
                        description:
                            'Vytvořte si widget dle vlastní volby a mějte přehled o svátcích, narozeninách a vašich událostech.',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_24),
                      child: Card2(
                        vectorPath: AppVectorAssets.linkedIn,
                        title: 'Svátky a narozeniny widget',
                        description:
                            'Vytvořte si widget dle vlastní volby a mějte přehled o svátcích, narozeninách a vašich událostech.',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_72),
                      child: Card2(
                        title: 'Svátky a narozeniny widget',
                        description:
                            'Vytvořte si widget dle vlastní volby a mějte přehled o svátcích, narozeninách a vašich událostech.',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    AppText(
                      'Card3',
                      textSize: Dimensions.of(context).text18,
                      textColor: AppColors.paragraph,
                      fontWeight: FontWeight.bold,
                      padding: EdgeInsets.only(bottom: Paddings.of(context).padding_8),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_24),
                      child: Card3(
                        imagePath: AppImageAssets.myBackground,
                        title: 'Svátky a narozeniny widget',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_24),
                      child: Card3(
                        vectorPath: AppVectorAssets.flutter,
                        title: 'Svátky a narozeniny widget',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_72),
                      child: Card3(
                        title: 'Svátky a narozeniny widget',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    AppText(
                      'TitleClickable',
                      textSize: Dimensions.of(context).text18,
                      textColor: AppColors.paragraph,
                      fontWeight: FontWeight.bold,
                      padding: EdgeInsets.only(bottom: Paddings.of(context).padding_8),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(bottom: Paddings.of(context).padding_72),
                      child: TitleClickable(
                        title: 'Svátky a narozeniny widget',
                        onTap: () {
                          // TODO
                        },
                      ),
                    ),
                    AppText(
                      'CircleImage',
                      textSize: Dimensions.of(context).text18,
                      textColor: AppColors.paragraph,
                      fontWeight: FontWeight.bold,
                      padding: EdgeInsets.only(bottom: Paddings.of(context).padding_8),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: Paddings.of(context).padding_72),
                      child: Row(
                        children: [
                          CircleImage(
                            vectorPath: AppVectorAssets.svatkyApp,
                            margin: EdgeInsets.only(right: Paddings.of(context).padding_16),
                            onTap: () {
                              // TODO
                            },
                          ),
                          CircleImage(
                            vectorPath: AppVectorAssets.linkedIn,
                            margin: EdgeInsets.only(right: Paddings.of(context).padding_16),
                            onTap: () {
                              // TODO
                            },
                          ),
                          CircleImage(
                            vectorPath: AppVectorAssets.github,
                            margin: EdgeInsets.only(right: Paddings.of(context).padding_16),
                            onTap: () {
                              // TODO
                            },
                          ),
                          CircleImage(
                            vectorPath: AppVectorAssets.flutter,
                            onTap: () {
                              // TODO
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
