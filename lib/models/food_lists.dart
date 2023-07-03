import 'package:flutter/material.dart';

import 'food_model.dart';

class FoodLists {
  static final List<Food> donuts = [
    Food(
        name: 'Strawberry',
        price: '10',
        imagePath: 'lib/images/donuts/strawberry_donut.png',
        color: Colors.pink),
    Food(
        name: 'Grape',
        price: '10',
        imagePath: 'lib/images/donuts/grape_donut.png',
        color: Colors.green),
    Food(
        name: 'Chocolate',
        price: '10',
        imagePath: 'lib/images/donuts/chocolate_donut.png',
        color: Colors.brown),
    Food(
        name: 'Ice Cream',
        price: '10',
        imagePath: 'lib/images/donuts/icecream_donut.png',
        color: Colors.blue),
  ];
}
