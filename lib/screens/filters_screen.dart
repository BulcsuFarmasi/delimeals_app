import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  final Map<String, bool> currentFilters;
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
    _glutenFree = widget.currentFilters['gluten']!;
    _vegetarian = widget.currentFilters['vegetarian']!;
    _vegan = widget.currentFilters['vegan']!;
    _lactoseFree = widget.currentFilters['lactose']!;
  }

  Widget FilterSwitch(String title, String subtitle, bool value, Function onChanged) {
    return FilterSwitch();
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
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegetarian': _vegetarian,
                'vegan': _vegan,
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
                  'Gluten free',
                  'Only include gluten free meals',
                  _glutenFree,
                  (bool newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                FilterSwitch(
                  'Vegetarian',
                  'Only include vegetarian meals',
                  _vegetarian,
                  (bool newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
                FilterSwitch(
                  'Vegan',
                  'Only include vegan meals',
                  _vegan,
                  (bool newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                FilterSwitch(
                  'Lactose free',
                  'Only include lactose free meals',
                  _lactoseFree,
                  (bool newValue) {
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


