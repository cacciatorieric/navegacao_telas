import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealIten extends StatelessWidget {
  const MealIten({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  void _selectedMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectedMeal,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    meal.imageUrl!,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
