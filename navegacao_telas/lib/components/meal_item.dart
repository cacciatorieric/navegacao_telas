import 'package:flutter/material.dart';
import 'package:navegacao_telas/utils/app_routs.dart';

import '../models/meal.dart';

class MealIten extends StatelessWidget {
  const MealIten({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  void _selectedMeal(BuildContext context) {
    Navigator.of(context).pushNamed(AppRouts.MEAL_DETAIL, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedMeal(context),
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
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    child: Text(
                      meal.title!,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 5),
                      Text('${meal.isDuration} min'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(width: 5),
                      Text('${meal.complexityText}'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.price_change),
                      const SizedBox(width: 5),
                      Text('${meal.costText}'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
