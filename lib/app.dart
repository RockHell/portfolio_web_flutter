import 'package:flutter/material.dart';
import 'package:my_portfolio/common/app_colors.dart';
import 'package:my_portfolio/common/r.dart';
import 'package:my_portfolio/pages/home_page/home_page.dart';

// TODO Favicon
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: R.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.seedColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
