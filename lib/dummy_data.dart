import 'package:delimeals_app/models/ingredient.dart';
import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const dummyCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

final dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      Ingredient(quantity: '4', name: 'Tomatoes'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoon of',
          name: 'Olive Oil'),
      Ingredient(quantity: '1', name: 'Onion'),
      Ingredient(quantity: '250', measurement: 'g', name: 'Spaghetti'),
      Ingredient(name: 'Spices'),
      Ingredient(name: 'Cheese (optional)'),
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Slice',
          name: 'White Bread'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Slice',
          name: 'Ham'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Slice',
          name: 'Pineapple'),
      Ingredient(
          quantity: '1-2',
          quanityMeasurementIsSeparated: true,
          measurement: 'Slices of',
          name: 'Chesse'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoon of',
          name: 'Olive Oil'),
      Ingredient(name: 'Butter'),
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      Ingredient(quantity: '300', measurement: 'g', name: 'Cattle Hack'),
      Ingredient(quantity: '1', name: 'Tomato'),
      Ingredient(quantity: '1', name: 'Cucumber'),
      Ingredient(quantity: '1', name: 'Onion'),
      Ingredient(quantity: '1', name: 'Ketchup'),
      Ingredient(quantity: '2', name: 'Burger Buns'),
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      Ingredient(quantity: '8', name: 'Veal Cutlets'),
      Ingredient(quantity: '4', name: 'Eggs'),
      Ingredient(quantity: '200', measurement: 'g', name: 'Cucumber'),
      Ingredient(quantity: '100', measurement: 'g', name: 'Flour'),
      Ingredient(quantity: '300', measurement: 'ml', name: 'Butter'),
      Ingredient(quantity: '100', measurement: 'ml', name: 'Vegetable Oil'),
      Ingredient(name: 'Salt'),
      Ingredient(name: 'Lemon Slices'),
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      Ingredient(name: 'Arugula'),
      Ingredient(name: 'Lamb\'s Lettuce'),
      Ingredient(name: 'Parsley'),
      Ingredient(name: 'Fennel'),
      Ingredient(quantity: '4', name: 'Eggs'),
      Ingredient(quantity: '200', measurement: 'g', name: 'Smoked Salmon'),
      Ingredient(name: 'Mustard'),
      Ingredient(name: 'Balsamic Vinegar'),
      Ingredient(name: 'Olive Oil'),
      Ingredient(name: 'Salt and Pepper'),
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      Ingredient(
          quantity: '4',
          quanityMeasurementIsSeparated: true,
          measurement: 'Sheets of',
          name: 'Gelatine'),
      Ingredient(quantity: '150', measurement: 'ml', name: 'Orange Juice'),
      Ingredient(quantity: '80', measurement: 'g', name: 'Sugar'),
      Ingredient(quantity: '300', measurement: 'g', name: 'Yoghurt'),
      Ingredient(quantity: '200', measurement: 'g', name: 'Cream'),
      Ingredient(name: 'Orange Peel'),
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      Ingredient(
          quantity: '1 1/2',
          quanityMeasurementIsSeparated: true,
          measurement: 'Cups',
          name: 'all-purpose Flour'),
      Ingredient(
          quantity: '3 1/2',
          quanityMeasurementIsSeparated: true,
          measurement: 'Teaspoons',
          name: 'Baking Powder'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Teaspoon',
          name: 'Salt'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoon',
          name: 'White Sugar'),
      Ingredient(
          quantity: '1 1/4',
          quanityMeasurementIsSeparated: true,
          measurement: 'cups',
          name: 'Milk'),
      Ingredient(quantity: '1', name: 'Egg'),
      Ingredient(
          quantity: '3',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoons',
          name: 'Butter, melted'),
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      Ingredient(quantity: '4', name: 'Chicken Breasts'),
      Ingredient(quantity: '1', name: 'Onion'),
      Ingredient(
          quantity: '2',
          quanityMeasurementIsSeparated: true,
          measurement: 'Cloves of',
          name: 'Garlic'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Piece of',
          name: 'Ginger'),
      Ingredient(
          quantity: '4',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoons',
          name: 'Almonds'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Teaspoon',
          name: 'Cayenne Pepper'),
      Ingredient(quantity: '500', measurement: 'ml', name: 'Coconut Milk'),
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Teaspoon',
          name: 'melted Butter'),
      Ingredient(
          quantity: '2',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoons',
          name: 'white Sugar'),
      Ingredient(
          quantity: '2',
          quanityMeasurementIsSeparated: true,
          measurement: 'Ounces',
          name: '70% dark Chocolate, broken into pieces'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoon',
          name: 'Butter'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoon',
          name: 'all-purpose Flour'),
      Ingredient(
          quantity: '4 1/3',
          quanityMeasurementIsSeparated: true,
          measurement: 'tablespoons',
          name: 'cold Milk'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Pinch',
          name: 'Salt'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Pinch',
          name: 'Cayenne Pepper'),
      Ingredient(quantity: '1', name: 'Large Egg Yolk'),
      Ingredient(quantity: '2', name: 'Large Egg Whites'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Pinch',
          name: 'Cream of Tartar'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoon',
          name: 'white Sugar'),
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      Ingredient(name: 'White and Green Asparagus'),
      Ingredient(quantity: '30', measurement: 'g', name: 'Pine Nuts'),
      Ingredient(
          quantity: '300',
          quanityMeasurementIsSeparated: true,
          measurement: 'g',
          name: 'Cherry Tomatoes'),
      Ingredient(name: 'Salad'),
      Ingredient(
          quantity: '1',
          quanityMeasurementIsSeparated: true,
          measurement: 'Tablespoon',
          name: 'Salt, Pepper and Olive Oil'),
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
