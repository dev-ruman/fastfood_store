import 'package:burger_store/models/food_lists.dart';
import 'package:burger_store/pages/food_tab.dart';
import 'package:flutter/material.dart';

import '../components/individual_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [
    IndividualTab(
      iconPath: 'lib/icons/burger.png',
    ),
    IndividualTab(
      iconPath: 'lib/icons/donut.png',
    ),
    IndividualTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    IndividualTab(
      iconPath: 'lib/icons/pizza.png',
    ),
    IndividualTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
  ];

  List<Widget> tabBarViews = [
    FoodTab(foodList: FoodLists.donuts),
    FoodTab(foodList: FoodLists.donuts),
    FoodTab(foodList: FoodLists.donuts),
    FoodTab(foodList: FoodLists.donuts),
    FoodTab(foodList: FoodLists.donuts)
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink[400],
            elevation: 0,
            title: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.restaurant_rounded,
                  size: 36,
                  color: Colors.white,
                )),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_outline_rounded,
                      size: 36,
                      color: Colors.white,
                    )),
              )
            ]),
        body: Column(
          children: [
            //headline
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            //tabbar
            TabBar(
              indicatorColor: Colors.pink,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              indicatorPadding: EdgeInsets.only(bottom: -5),
              dividerColor: Colors.transparent,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              splashFactory: NoSplash.splashFactory,
              splashBorderRadius: BorderRadius.circular(15),
              tabs: tabs,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: TabBarView(children: tabBarViews)),
          ],
        ),
      ),
    );
  }
}
