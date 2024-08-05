import 'package:flutter/material.dart';
import 'package:my_portfolio/app.dart';

void main() async {
  // Needs to be called so that we can await for EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      const App(),
  );
}
