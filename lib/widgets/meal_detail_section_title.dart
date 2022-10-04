import 'package:flutter/material.dart';

class MealDetailSectionTitle extends StatelessWidget {
  final String title;
  const MealDetailSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
