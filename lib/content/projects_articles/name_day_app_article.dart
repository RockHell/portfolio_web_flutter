import 'package:flutter/material.dart';
import 'package:my_portfolio/common/paddings.dart';
import 'package:my_portfolio/widgets/background.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class NameDayAppArticle extends StatelessWidget {
  const NameDayAppArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: "Svátky a narozeniny widget",
                onTap: () {
                  Navigator.of(context).pop();
                },
                margin: EdgeInsets.symmetric(
                  vertical: Paddings(context).padding_24,
                  horizontal: Paddings(context).mainPadding - Paddings(context).padding_16,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  Paddings(context).mainPadding,
                  0.0,
                  Paddings(context).mainPadding,
                  Paddings(context).mainPadding,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
