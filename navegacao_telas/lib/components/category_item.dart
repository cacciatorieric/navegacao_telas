import 'package:flutter/material.dart';
import 'package:navegacao_telas/models/category.dart';
import 'package:navegacao_telas/utils/app_routs.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;

  void _selectedCategory(BuildContext context) {
    //Função para empurrar uma tela para a pilha,
    //executando a navegação e jogando a tela atual para baixo
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsScreen();
    //     },
    //   ),
    // );

    //Nesse caso, estamos chamando a tela pelo 'nome ou id' e estamos passando um objeto junto com a chamada, e o objeto é manipulado na proxima tela
    Navigator.of(context)
        .pushNamed(AppRouts.CATEGORY_MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.deepPurpleAccent,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color!.withOpacity(0.5),
              category.color!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(category.title!),
      ),
    );
  }
}
