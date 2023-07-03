import 'package:burger_store/components/food_tile.dart';
import 'package:burger_store/models/food_model.dart';
import 'package:flutter/material.dart';

class FoodTab extends StatefulWidget {
  final List<Food> foodList;
  const FoodTab({super.key, required this.foodList});

  @override
  State<FoodTab> createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return FoodTile(food: widget.foodList[index]);
        });
  }
}
