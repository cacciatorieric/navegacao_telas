import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Hello World'),
      ),
      drawer: const MainDrawer(),
      body: Center(child: Text('Oh baby pliz')),
    );
  }
}
