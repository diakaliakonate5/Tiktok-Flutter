// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'HomePage.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          const BottomNavigationBarItem(
            icon: Icon(MdiIcons.compassOutline),
            label: 'Decouvrir',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tiktok_add.png',
              height: 20,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(MdiIcons.messageMinusOutline),
            label: 'Boite de reception',
          ),
          const BottomNavigationBarItem(
            icon: Icon(MdiIcons.account),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF141518),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
