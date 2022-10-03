import 'package:flutter/material.dart';

class FilterSwitch extends StatelessWidget {
  final String title;
  final bool filterValue;
  final String subtitle;
  final Function onChanged;

  const FilterSwitch({
    super.key,
    required this.title,
    required this.filterValue,
    required this.subtitle,
    required this.onChanged,
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      subtitle: Text(subtitle),
      onChanged: onChanged as void Function(bool)?,
    );
  }
}
