import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  CategoryMealsScreen({this.categoryId, this.categoryTitle});

  final String categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: Center(
        child: const Text('The Recipes for The Category'),
      ),
    );
  }
}
