import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_list_item.dart';
import 'package:recipe_app/components/recipe_menu.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem(
              imageName: "coffe",
              title: "Made Coffee",
            ),
            RecipeListItem(
              imageName: "burger",
              title: "Made Burger",
            ),
            RecipeListItem(
              imageName: "pizza",
              title: "Made Pizza",
            ),
          ],
        ),
      ),
    );
  }
}

AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.black,
    actions: const [
      Icon(
        CupertinoIcons.search,
        color: Colors.black,
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        CupertinoIcons.heart,
        color: Colors.redAccent,
      ),
      SizedBox(
        width: 15,
      ),
    ],
  );
}
