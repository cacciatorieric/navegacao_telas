import 'package:flutter/material.dart';
import 'package:navegacao_telas/screens/categories_screen.dart';
import 'package:navegacao_telas/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIdex = 0;
  final List<Widget> _screens = [
    CategoriesScreen(),
    FavoriteScreen(),
  ];

  _selectedScreen(int index) {
    setState(() {
      _selectedScreenIdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos Cozinhar'),
      ),
      body: _screens[_selectedScreenIdex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedScreen,
          backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedScreenIdex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
          ]),
    );
  }
}
