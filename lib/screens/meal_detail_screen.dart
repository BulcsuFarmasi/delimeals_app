import 'package:delimeals_app/widgets/meal_detail_section_title.dart';
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
    final theme = Theme.of(context);
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
                    color: theme.colorScheme.secondary,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(meal.ingredients[index]),
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

class MealDetailSection extends StatelessWidget {
  final Widget child;
  const MealDetailSection({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: child,
    );
  }
}

