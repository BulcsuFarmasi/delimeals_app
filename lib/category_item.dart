import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({this.title, this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        title,
        style: theme.textTheme.headline6,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
