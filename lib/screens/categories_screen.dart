import 'package:flutter/material.dart';

import 'package:delimeals_app/models/category.dart';
import 'package:delimeals_app/widgets/category_item.dart';
import 'package:delimeals_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dummyCategories
          .map((Category category) =>
          CategoryItem(
            id: category.id,
            title: category.title,
            color: category.color,
          ))
          .toList(),
    );
  }
}
