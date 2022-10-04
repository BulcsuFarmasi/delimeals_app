import 'package:delimeals_app/dummy_data.dart';
import 'package:delimeals_app/models/filter_option.dart';
import 'package:flutter/material.dart';

import 'package:delimeals_app/models/meal.dart';
import 'package:delimeals_app/screens/categories_screen.dart';
import 'package:delimeals_app/screens/category_meals_screen.dart';
import 'package:delimeals_app/screens/filters_screen.dart';
import 'package:delimeals_app/screens/meal_detail_screen.dart';
import 'package:delimeals_app/screens/tabs_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Map<FilterOption, bool> _filters = {
    FilterOption.gluten: false,
    FilterOption.lactose: false,
    FilterOption.vegetarian: false,
    FilterOption.vegan: false,
  };

  List<Meal> _availableMeals = dummyMeals;
  final List<Meal> _favoriteMeals = [];

  void _setFilters(Map<FilterOption, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = dummyMeals.where((Meal meal) {
        if (_filters[FilterOption.gluten]! && !meal.isGlutenFree) {
          return false;
        }
        if (_filters[FilterOption.lactose]! && !meal.isLactoseFree) {
          return false;
        }
        if (_filters[FilterOption.vegetarian]! && !meal.isVegetarian) {
          return false;
        }
        if (_filters[FilterOption.vegan]! && !meal.isVegan) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final existingIndex = _favoriteMeals.indexWhere((Meal meal) {
      return meal.id == mealId;
    });
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals
            .add(dummyMeals.firstWhere((Meal meal) => meal.id == mealId));
      });
    }
  }

  bool _isMealFavorite(String mealId) {
    return _favoriteMeals.any((Meal meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    print(_availableMeals.length);

    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      // default is /
      routes: {
        '/': (BuildContext context) => TabsScreen(_favoriteMeals),
        CategoryMealsScreen.routeName: (BuildContext context) =>
            CategoryMealsScreen(_availableMeals),
        FiltersScreen.routeName: (BuildContext context) =>
            FiltersScreen(_filters, _setFilters),
        MealDetailScreen.routeName: (BuildContext context) =>
            MealDetailScreen(_toggleFavorite, _isMealFavorite),
      },
      onGenerateRoute: (RouteSettings settings) {
        print(settings.arguments);
        return MaterialPageRoute(
            builder: (BuildContext context) => const CategoriesScreen());
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => const CategoriesScreen());
      },
    );
  }
}
