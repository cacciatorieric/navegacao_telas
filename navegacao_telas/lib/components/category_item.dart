import 'package:flutter/material.dart';
import 'package:navegacao_telas/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    this.category,
  }) : super(key: key);
  final Category? category;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category!.title),
    );
  }
}
