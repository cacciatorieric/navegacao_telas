import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/main_drawer.dart';

import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();

  Widget _createSwitch(
    String title,
    String subTitle,
    bool? value,
    void Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subTitle),
      value: value!,
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Configuração',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 100,
                  color: Colors.blueGrey,
                  child: Text(
                      'Eric do futuro!\nLer documentação sobre switch pq o seu eu do passado nao conseguiu entender essa merda '),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
