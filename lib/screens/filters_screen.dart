import 'package:delimeals_app/models/filter_option.dart';
import 'package:delimeals_app/widgets/filter_switch.dart';
import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  final Map<FilterOption, bool> currentFilters;
  final Function saveFilters;

  const FiltersScreen(this.currentFilters, this.saveFilters, {super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();

  static const String routeName = '/filters';
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  initState() {
    super.initState();
    _glutenFree = widget.currentFilters[FilterOption.gluten]!;
    _vegetarian = widget.currentFilters[FilterOption.vegetarian]!;
    _vegan = widget.currentFilters[FilterOption.vegetarian]!;
    _lactoseFree = widget.currentFilters[FilterOption.lactose]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              widget.saveFilters({
                FilterOption.gluten: _glutenFree,
                FilterOption.lactose: _lactoseFree,
                FilterOption.vegetarian: _vegetarian,
                FilterOption.vegan: _vegan,
              });
            },
          )
        ],
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection!',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                FilterSwitch(
                  title: 'Gluten free',
                  subtitle: 'Only include gluten free meals',
                  filterValue: _glutenFree,
                  onChanged: (bool newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                FilterSwitch(
                  title: 'Vegetarian',
                  subtitle: 'Only include vegetarian meals',
                  filterValue: _vegetarian,
                  onChanged: (bool newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
                FilterSwitch(
                  title: 'Vegan',
                  subtitle: 'Only include vegan meals',
                  filterValue: _vegan,
                  onChanged:(bool newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                FilterSwitch(
                  title: 'Lactose free',
                  subtitle:'Only include lactose free meals',
                  filterValue: _lactoseFree,
                  onChanged: (bool newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


