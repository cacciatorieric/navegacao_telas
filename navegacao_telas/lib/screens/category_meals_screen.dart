import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/meal_item.dart';
import 'package:navegacao_telas/data/dummy.dart';
import 'package:navegacao_telas/models/category.dart';
import 'package:navegacao_telas/models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories!.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title!),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealIten(
            meal: categoryMeals[index],
          );
        },
      ),
    );
  }
}
