import 'package:flutter/material.dart';
import 'package:navegacao_telas/data/dummy.dart';
import 'package:navegacao_telas/models/meal.dart';
import 'package:navegacao_telas/screens/category_meals_screen.dart';
import 'package:navegacao_telas/screens/meal_detail_screen.dart';
import 'package:navegacao_telas/screens/settings_screen.dart';
import 'package:navegacao_telas/screens/tab_screen.dart';
import 'package:navegacao_telas/utils/app_routs.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _avaliableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRouts.HOME: (ctx) => const TabScreen(),
        AppRouts.CATEGORY_MEALS: (ctx) => const CategoryMealsScreen(),
        AppRouts.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
        AppRouts.SETTINGS: (ctx) => const SettingsScreen(),
      },
    );
  }
}
