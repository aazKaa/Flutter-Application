import 'package:flutter/material.dart';
import 'package:flutter_application_2/menu/home_page.dart';
import 'package:flutter_application_2/menu/history_page.dart';
import 'package:flutter_application_2/menu/profile_page.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        title: const Text("Aplikasi Menu Navigasi"),
        backgroundColor: const Color.fromARGB(255, 255, 149, 0),
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange.shade50,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 149, 0),
              ),
              child: Text(
                'Menu Pilihan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.deepOrange),
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              selectedColor: Colors.deepOrange,
              selectedTileColor: Colors.orange.shade100,
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.deepOrange),
              title: const Text('History'),
              selected: _selectedIndex == 1,
              selectedColor: Colors.deepOrange,
              selectedTileColor: Colors.orange.shade100,
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.deepOrange),
              title: const Text('Profile'),
              selected: _selectedIndex == 2,
              selectedColor: Colors.deepOrange,
              selectedTileColor: Colors.orange.shade100,
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}