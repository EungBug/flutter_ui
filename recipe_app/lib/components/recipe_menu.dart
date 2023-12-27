import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          MenuItem(icon: Icons.food_bank, text: "ALL"),
          SizedBox(
            width: 25,
          ),
          MenuItem(icon: Icons.emoji_food_beverage, text: "Coffee"),
          SizedBox(
            width: 25,
          ),
          MenuItem(icon: Icons.fastfood, text: "Burger"),
          SizedBox(
            width: 25,
          ),
          MenuItem(icon: Icons.local_pizza, text: "Pizza"),
          SizedBox(
            width: 25,
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.redAccent,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
