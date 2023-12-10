import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.black,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (light, darkTheme) => MaterialApp(
        theme: light,
        darkTheme: darkTheme,
        home: HomePage(),
      ),
    );
  }
}
