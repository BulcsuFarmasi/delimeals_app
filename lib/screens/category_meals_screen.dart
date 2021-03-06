import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  final List<Meal> availableMeals;

  CategoryMealsScreen(this.availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();

  static const String routeName = '/category-meals';
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  // CategoryMealsScreen({this.categoryId, this.categoryTitle});
  //

  String categoryTitle;
  List<Meal> categoryMeals;
  bool _loadedInitData = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_loadedInitData) {
      final Map<String, String> routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
      final categoryId = routeArguments['id'];
      categoryTitle = routeArguments['title'];
      categoryMeals = widget.availableMeals.where((Meal meal) => meal.categories.contains(categoryId)).toList();
      _loadedInitData = true;
    }
  }

  @override
  Widget build(BuildContext context) {
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
}
