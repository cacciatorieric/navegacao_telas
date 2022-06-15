import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/main_drawer.dart';
import 'package:navegacao_telas/screens/categories_screen.dart';
import 'package:navegacao_telas/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = const [
    CategoriesScreen(),
    FavoriteScreen(),
  ];

  final List<String> _titles = [
    'Lista de Categorias',
    'Favoritos',
  ];

  _selectedScreen(int index) {
    setState(
      () {
        _selectedScreenIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedScreenIndex],
        ),
      ),
      drawer: const MainDrawer(),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedScreen,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
