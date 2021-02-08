import 'package:flutter/material.dart';

import 'dummy_data.dart';
import './models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';
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
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Text(categoryMeals[index].title);
      }, itemCount: categoryMeals.length,),
    );
  }
}
