import 'package:delimeals_app/screens/filters_screen.dart';
import 'package:delimeals_app/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navigator = Navigator.of(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.centerLeft,
            color: theme.colorScheme.secondary,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          DrawerTile(
            icon: Icons.restaurant,
            title: 'Meals',
            onTap: () {
              navigator.pushReplacementNamed('/');
            },
          ),
          DrawerTile(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {
              navigator.pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
