import 'package:f290_pdm2_person_profile/neo_profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //TODO: Alterar brightness light ou dark
        brightness: Brightness.dark,
        //TODO: Testar com Material 2 ou 3
        useMaterial3: true,
        //TODO: Altere as cores
        colorSchemeSeed: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Ricieri Profile',
      home: const NeoProfilePage(),
    );
  }
}
