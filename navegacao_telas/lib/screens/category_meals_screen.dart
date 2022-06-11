import 'package:flutter/material.dart';
import 'package:navegacao_telas/models/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title!),
      ),
      body: Container(
        child: const Text('Receitas por categoria'),
      ),
    );
  }
}
