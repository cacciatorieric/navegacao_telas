import 'package:flutter/material.dart';
import 'package:navegacao_telas/utils/app_routs.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String title, void Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blueAccent,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.blueAccent,
          fontSize: 12,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            color: Colors.amberAccent,
            child: const Text(
              'Vamos cozinhar',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(AppRouts.HOME),
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () => Navigator.of(context).pushReplacementNamed(AppRouts.SETTINGS),
          ),
        ],
      ),
    );
  }
}
