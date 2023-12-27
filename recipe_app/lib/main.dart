import 'package:flutter/material.dart';
import 'package:recipe_app/pages/recipe_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "PatuaOne"),
      home: const RecipePage(),
    );
  }
}
