import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  // CategoryMealsScreen({this.categoryId, this.categoryTitle});
  //
  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArguments['id'];
    final String categoryTitle = routeArguments['title'];
    final List<Meal> categoryMeals = DUMMY_MEALS.where((Meal meal) => meal.categories.contains(categoryId)).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }

  static const String routeName = '/category-meals';
}
