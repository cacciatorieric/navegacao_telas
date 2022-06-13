import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _createSectionContainer(Widget child) {
    return Container(
      width: 350,
      height: 250,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title!),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image.network(
                  meal.imageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
              _createSectionTitle(context, 'Ingredientes'),
              _createSectionContainer(
                ListView.builder(
                  itemCount: meal.ingredients!.length,
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Colors.cyan[100],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(
                          meal.ingredients![index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              _createSectionTitle(context, 'Passos'),
              _createSectionContainer(
                ListView.builder(
                  itemCount: meal.steps!.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '${index + 1}',
                        ),
                      ),
                      title: Text(
                        meal.steps![index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
