import 'dart:ui';

import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/filters_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    Map<String, bool> _filters = {
      'gluten': false,
      'lactose': false,
      'vegetarian': false,
      'vegan': false,
    };

    void _setFilters (Map<String, bool> filterData) {
      setState(() {
        _filters = filterData;
      });
    }

    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      // default is /
      routes: {
        '/': (BuildContext context) => TabsScreen(),
        CategoryMealsScreen.routeName: (BuildContext context) => CategoryMealsScreen(),
        FiltersScreen.routeName: (BuildContext context) => FiltersScreen(_setFilters),
        MealDetailScreen.routeName: (BuildContext context) => MealDetailScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (BuildContext context) => CategoriesScreen());
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) => CategoriesScreen());
      },
    );
  }
}
