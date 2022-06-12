import 'package:flutter/material.dart';
import 'package:navegacao_telas/screens/categories_screen.dart';
import 'package:navegacao_telas/screens/category_meals_screen.dart';
import 'package:navegacao_telas/screens/meal_screen_detail.dart';
import 'package:navegacao_telas/utils/app_routs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRouts.HOME: (ctx) => const CategoriesScreen(),
        AppRouts.CATEGORY_MEALS: (ctx) => const CategoryMealsScreen(),
        AppRouts.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
      },
    );
  }
}
