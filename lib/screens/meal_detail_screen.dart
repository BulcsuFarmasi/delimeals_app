import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  MealDetailScreen(this.toggleFavorite, this.isMealFavorite);

  final Function toggleFavorite;
  final Function isMealFavorite;

  Widget buildSectionTitle(String title, ThemeData theme) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: theme.textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final String? mealId = ModalRoute.of(context)!.settings.arguments as String?;
    final Meal meal = DUMMY_MEALS.firstWhere((Meal meal) => meal.id == mealId);
    final ThemeData theme = Theme.of(context);
    final NavigatorState navigator = Navigator.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${meal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle('Ingredients', theme),
            buildContainer(
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: theme.colorScheme.secondary,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(meal.ingredients[index]),
                    ),
                  );
                },
                itemCount: meal.ingredients.length,
              ),
            ),
            buildSectionTitle('Steps', theme),
            buildContainer(
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('#${index + 1}'),
                      ),
                      title: Text(meal.steps[index]),
                    ),
                    Divider(),
                  ]);
                },
                itemCount: meal.steps.length,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isMealFavorite(mealId) ? Icons.star : Icons.star_border),
        onPressed: () {
          toggleFavorite(mealId);
        },
      ),
    );
  }

  static const String routeName = '/meal-detail';
}
