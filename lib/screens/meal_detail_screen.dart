import 'package:delimeals_app/widgets/meal_detail_section_title.dart';
import 'package:delimeals_app/widgets/meal_detail_sections.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen(this.toggleFavorite, this.isMealFavorite, {super.key});

  final Function toggleFavorite;
  final Function isMealFavorite;

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String?;
    final meal = dummyMeals.firstWhere((Meal meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const MealDetailSectionTitle(title: 'Ingredients'),
            MealDetailSection(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(meal.ingredients[index].toString()),
                    ),
                  );
                },
                itemCount: meal.ingredients.length,
              ),
            ),
            const MealDetailSectionTitle(title: 'Steps'),
            MealDetailSection(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('#${index + 1}'),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      title: Text(meal.steps[index]),
                    ),
                    const Divider(),
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

