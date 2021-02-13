import 'package:delimeals_app/screens/favorites_screen.dart';
import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    CategoriesScreen(),
    FavoritesScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.primaryColor,
        selectedItemColor: theme.accentColor,
        unselectedItemColor: Colors.white,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            label: 'Categories',
            backgroundColor: theme.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.star),
            label: 'Favorites',
            backgroundColor: theme.primaryColor,
          ),
        ],
      ),
    );
  }
}
