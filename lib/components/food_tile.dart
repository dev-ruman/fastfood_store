import 'package:burger_store/models/food_model.dart';
import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: food.color.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: food.color.withOpacity(0.6),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Text(
                      '\$ ${food.price}',
                      style: TextStyle(
                          fontSize: 18,
                          color: food.color.withOpacity(0.8),
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
              child: Image.asset(food.imagePath),
            ),
            Text(
              food.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey[800]),
            ),
            Text(
              'Author',
              // I will change this later to food.author
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(fill: 0.5, Icons.favorite_outline_rounded)),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
