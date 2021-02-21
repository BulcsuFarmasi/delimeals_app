import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';


class FiltersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your filters'),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: const Text('Filters!'),
        ));
  }

  static const String routeName = '/filters';
}
