import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/category_item.dart';
import 'package:navegacao_telas/data/dummy.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return CategoryItem(
          category: cat,
        );
      }).toList(),
    );
  }
}
